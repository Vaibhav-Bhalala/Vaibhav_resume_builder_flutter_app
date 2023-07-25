import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('build');
        },
        backgroundColor: Globals.bgColor,
        child: Icon(
          Icons.add,
          color: Globals.textColor,
          size: 55,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Globals.bgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Resume Builder",
                    style: TextStyle(
                      color: Globals.textColor,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "RESUMES",
                    style: TextStyle(
                      color: Globals.textColor,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "lib/utils/Assets/Build_Icons/open-cardboard-box.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "No Resumes + Create new resume.",
                  style: TextStyle(
                    color: Globals.text1,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
