import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cgpa="";
  TextEditingController Controller1 =TextEditingController();
  TextEditingController Controller2 =TextEditingController();
  TextEditingController Controller3 =TextEditingController();
  TextEditingController Controller4 =TextEditingController();
  TextEditingController Controller5 =TextEditingController();
  TextEditingController Controller6 =TextEditingController();
  TextEditingController Controller7 =TextEditingController();
  TextEditingController Controller8 =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text("CGPA calculator",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 80,),
            Text("CGPA:$cgpa",style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 80,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Controller1,
                    decoration: InputDecoration(
                      hintText: "1st Semester",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: Controller2,
                    decoration: InputDecoration(
                      hintText: "2nd Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Controller3,
                    decoration: InputDecoration(
                        hintText: "3rd Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: Controller4,
                    decoration: InputDecoration(
                        hintText: "4th Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Controller5,
                    decoration: InputDecoration(
                        hintText: "5th Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: Controller6,
                    decoration: InputDecoration(
                        hintText: "6th Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Controller7,
                    decoration: InputDecoration(
                        hintText: "7th Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: Controller8,
                    decoration: InputDecoration(
                        hintText: "8th Semester",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                cgpa= ((double.parse(Controller1.text)*.05) +
                    (double.parse(Controller2.text)*.05) +
                    (double.parse(Controller3.text)*.05) +
                    (double.parse(Controller4.text) *.10)+
                    (double.parse(Controller5.text)*.15) +
                    (double.parse(Controller6.text) *.20)+
                    (double.parse(Controller7.text) *.25)+
                    (double.parse(Controller8.text) *.15)).toStringAsFixed(2);
                setState(() {
                });
              },
              child: Container(
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                 color: Colors.deepOrange,
                  
                ),
                child: Center(child: Text("Submit",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
