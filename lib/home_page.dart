import 'package:flutter/material.dart';
import 'package:my_flutter_app/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return const LearnFlutterPage();
          }
          ),
          );
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, 
          foregroundColor: Colors.white, 
        ),
        child: const Text("Learn Flutter"),
      ),
    );
  }
}

