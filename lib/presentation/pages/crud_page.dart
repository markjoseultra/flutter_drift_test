import 'dart:async';

import 'package:date_time_format/date_time_format.dart';
import 'package:drift_test/data/app_database.dart';
import 'package:drift_test/data/db_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RenderItem {
  final int id;
  final String name;
  final String dateCreated;

  RenderItem({required this.id, required this.name, required this.dateCreated});
}

class CrudPage extends ConsumerStatefulWidget {
  const CrudPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CrudPageState();
}

class _CrudPageState extends ConsumerState<CrudPage> {
  List<RenderItem> renderData = [];

  int? selectedItemId;

  void addData(String name) async {
    try {
      final db = ref.read(dbProvider);

      await db.into(db.responseInputTable).insert(
            ResponseInputTableCompanion.insert(
              name: name,
              dateCreatedInMilliseconds: DateTime.now().millisecondsSinceEpoch,
              bigNumber: BigInt.from(1000),
              dateCreatedInDateTime: DateTime.now(),
              decimal: 10.0,
              imageBytes: Uint8List.fromList([]),
              jsonData: "",
              isSynced: false,
            ),
          );
    } catch (e) {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Something went wrong"),
              content: Text(e.toString()),
            );
          });
    }
  }

  void deleteData({required int id}) async {
    final db = ref.read(dbProvider);

    ResponseInputTableData itemToDelete =
        await (db.select(db.responseInputTable)
              ..where((item) => item.id.equals(id)))
            .getSingle();

    db.delete(db.responseInputTable).delete(itemToDelete);
  }

  void getData() async {
    final db = ref.read(dbProvider);

    List<ResponseInputTableData> dbData =
        await db.select(db.responseInputTable).get();

    dbData.sort((a, b) =>
        a.dateCreatedInMilliseconds < b.dateCreatedInMilliseconds ? 1 : 0);

    setState(() {
      renderData = dbData.map((e) {
        return RenderItem(
          id: e.id,
          name: e.name,
          dateCreated: DateTimeFormat.format(e.dateCreatedInDateTime,
              format: "M d Y h:i s A"),
        );
      }).toList();
    });
  }

  void updateData({required int id, required String name}) async {
    final db = ref.read(dbProvider);

    ResponseInputTableData itemToUpdate =
        await (db.select(db.responseInputTable)
              ..where((item) => item.id.equals(id)))
            .getSingle();

    db.update(db.responseInputTable).replace(itemToUpdate.copyWith(name: name));
  }

  void onTapAddData() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height / 2,
          child: AddDataForm(onSaved: (value) {
            addData(value);

            Navigator.pop(context);
          }),
        );
      },
    );
  }

  void onTapUpdateData({required int id}) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height / 2,
          child: AddDataForm(onSaved: (value) {
            updateData(id: id, name: value);

            Navigator.pop(context);
          }),
        );
      },
    );
  }

  void startPeriodicAddData() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      addData("BOT DATA ${DateTime.now().millisecondsSinceEpoch}");
    });
  }

  void startDbListen() {
    final db = ref.read(dbProvider);

    Stream<List<ResponseInputTableData>> dataStream =
        db.select(db.responseInputTable).watch();

    dataStream.listen((data) {
      data.sort((a, b) =>
          a.dateCreatedInMilliseconds < b.dateCreatedInMilliseconds ? 1 : 0);

      setState(() {
        renderData = data.map((e) {
          return RenderItem(
            id: e.id,
            name: e.name,
            dateCreated: DateTimeFormat.format(e.dateCreatedInDateTime,
                format: "M d Y h:i s A"),
          );
        }).toList();
      });
    });
  }

  @override
  void initState() {
    getData();
    startDbListen();
    startPeriodicAddData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number of entries ${renderData.length}"),
        actions: [
          IconButton(onPressed: onTapAddData, icon: const Icon(Icons.add)),
        ],
        // bottom: PreferredSize(
        //   preferredSize: const Size(double.infinity, 60),
        //   child: Container(),
        // ),
      ),
      body: ListView.builder(
        reverse: true,
        itemCount: renderData.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key("LIST_ITEM_${renderData[index].id}"),
            leading: Radio(
              value: renderData[index].id,
              groupValue: selectedItemId,
              onChanged: (value) {
                setState(() {
                  selectedItemId = value;
                });
              },
            ),
            title: Text(renderData[index].name),
            subtitle: Text(renderData[index].dateCreated),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    deleteData(id: renderData[index].id);
                  },
                  icon: const Icon(Icons.delete),
                ),
                IconButton(
                  onPressed: () {
                    onTapUpdateData(id: renderData[index].id);
                  },
                  icon: const Icon(Icons.update),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AddDataForm extends StatefulWidget {
  final Function(String data) onSaved;

  const AddDataForm({super.key, required this.onSaved});

  @override
  State<AddDataForm> createState() => _AddDataFormState();
}

class _AddDataFormState extends State<AddDataForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? nameValue = "";

  void handleFormSave() {
    bool isValid = _formKey.currentState!.validate();

    if (!isValid) return;

    widget.onSaved(nameValue ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: "Name"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please add your name";
                  }

                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    nameValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(
                MediaQuery.sizeOf(context).width,
                50,
              ),
            ),
            onPressed: handleFormSave,
            child: const Text("Save"),
          ),
        ),
      ),
    );
  }
}
