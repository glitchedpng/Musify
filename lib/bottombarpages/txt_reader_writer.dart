import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class txt_rw extends StatefulWidget {
  const txt_rw({Key? key}) : super(key: key);

  @override
  State<txt_rw> createState() => _txt_rwState();
}
class _txt_rwState extends State<txt_rw> {
  final controller = TextEditingController();
  String? txtyaz='';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Metin Belgesi İşlemleri',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xFF00695c),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:50),
            child: Column(
              children: [
                Container(width: 300,
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        top: 10,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffDA44bb),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffDA44bb),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      labelStyle: TextStyle(
                        color: Color(0xffDA44bb),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      filled: true,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 63,
                    ),
                  ),
                  onPressed: () {
                    txtyazdir(controller.text);
                  },
                  child: Text('Kaydet'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 38,
                    ),
                  ),
                  onPressed: () {
                    txtoku().then((value) {
                      setState(() {
                        if(txtyaz.toString() != 'null')
                        {txtyaz = txtyaz.toString() + value ;}
                      });
                    });
                  },
                  child: Text('Veriyi Güncelle'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 35,
                    ),
                  ),
                  onPressed: () {
                    txtyaz = '';
                    txtyazdir(txtyaz.toString());
                  },
                  child: Text('Komple Temizle'),
                ),

                Container(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          child: Text(
                            txtyaz.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                          padding: const EdgeInsets.all(10.0),
                        ),
                      ],
                    ),
                  ),
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

txtyazdir(String text) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/my_file.txt');
  await file.writeAsString(text);

}

Future<String> txtoku() async {
  String text = '';
  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/my_file.txt');
    text = await file.readAsString();
  } catch (e) {
    print("Couldn't read file");
  }
  return text;
}
