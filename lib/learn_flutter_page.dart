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
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Actions");
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      
      body: SafeArea(  // ✅ Prevents content from overlapping system bars
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(), // ✅ Smooth scrolling effect
          child: Padding(
            padding: const EdgeInsets.all(10.0), // ✅ Adds some space around content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, // ✅ Ensures full width usage
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
                      "This is a text widget",
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
                    debugPrint("This is ElevatedButton");
                  },
                  child: const Text("ElevatedButton"),
                ),

                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: isSwitch ? Colors.green : Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    debugPrint("This is OutlinedButton");
                  },
                  child: const Text("OutlinedButton"),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: isSwitch ? Colors.green : Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    debugPrint("This is TextButton");
                  },
                  child: const Text("TextButton"),
                ),

                GestureDetector(
                  behavior: HitTestBehavior.opaque, // ✅ Allows tapping anywhere in row
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

                Image.network(
                  "https://live.staticflickr.com/7429/12637209434_c4370fa183_o.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
