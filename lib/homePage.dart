import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController Name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: Name,
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
              onTap: (){
                setState(() {
                  Name=Name.text;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Submit", style: TextStyle(color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
