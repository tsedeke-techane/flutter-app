import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

      body: SingleChildScrollView(
         physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset("images/einstein.jpg"),
            const SizedBox(height: 10),
            const Divider(color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(20.0),
        
              color: Colors.blueGrey,
              width: double.infinity,
        
              child: const Center(
                child: Text(
                  "This is a text widgets",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
        
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                debugPrint("This is elevatedButton");
              },
              child: Text("ElevatedButton"),
            ),
        
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                debugPrint("This is OutlinedButton");
              },
              child: Text("OutlinedButton"),
            ),
        
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                debugPrint("This is TextButton");
              },
              child: Text("TextButton"),
            ),
        
            GestureDetector(
              behavior: HitTestBehavior.opaque, // for all row line ----
              onTap: () {
                debugPrint("This is in the Row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.blue),
                  Text("Row widget"),
                  Icon(Icons.local_fire_department, color: Colors.blue),
                ],
              ),
            ),
        
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
        
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              },
            ),
        
        
            Image.network("https://live.staticflickr.com/7429/12637209434_c4370fa183_o.jpg")
          ],
        ),
      ),
    );
  }
}
