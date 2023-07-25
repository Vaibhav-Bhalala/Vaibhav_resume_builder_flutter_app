import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({Key? key}) : super(key: key);

  @override
  State<TechnicalSkills> createState() => _TechnicalSkillsState();
}

class _TechnicalSkillsState extends State<TechnicalSkills> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              formKey.currentState!.reset();
              Globals.skills1c.clear();
              Globals.skills2c.clear();
            },
            icon: Icon(
              Icons.refresh,
              color: Globals.textColor,
            ),
          ),
          IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Saved Successfully..."),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Plese Enter Full Detail..."),
                  ),
                );
              }
            },
            icon: Icon(
              Icons.check,
              color: Globals.textColor,
            ),
          ),
        ],
        toolbarHeight: 140,
        backgroundColor: Globals.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Globals.textColor,
          ),
        ),
        title: Text(
          "Technical Skills",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 30),
                    height: h * .33,
                    width: w * .9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Globals.textColor,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Enter Achievements",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.skills1c.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Course or Degree";
                              }
                            },
                            controller: Globals.skills1c,
                            onChanged: (val) {
                              setState(() {
                                Globals.skills1 = val;
                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete_rounded,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "C programming",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          TextFormField(
                            onFieldSubmitted: (val) {
                              setState(() {
                                Globals.skills2c.text = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Plese Enter Course or Degree";
                              }
                            },
                            controller: Globals.skills2c,
                            onChanged: (val) {
                              setState(() {
                                Globals.skills2 = val;
                              });
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete_rounded,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "C programming",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: h * .085,
                            width: w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 50,
                                color: Colors.grey,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
