import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtName = TextEditingController();
  List l1 = [];
  String name = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: txtName,
                decoration: InputDecoration(
                    label: Text("Enter your name"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.cyanAccent, width: 3))),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    name = txtName.text;
                    l1.add(name);
                  });
                },
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Add",
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: l1
                      .asMap()
                      .entries
                      .map((e) => Name(l1[e.key], e.key))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget Name(dynamic name, int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("$name",
                      style: TextStyle(color: Colors.amber, fontSize: 18)),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        l1.removeAt(index);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
