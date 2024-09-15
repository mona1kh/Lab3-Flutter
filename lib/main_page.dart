import 'package:flutter/material.dart';
import 'package:last_day/messages.dart';
import 'package:last_day/text_Widget.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Info =[
    {
      "name": "Mohammed Ahmad",
      "Job": "Student",
    },
    {
      "name": "Khalid Fahad",
      "Job": "Teacher",
    },
    {
      "name": "Faisel khalid",
      "Job": "Developer",
    },
    {
      "name": "Naser Saleh",
      "Job": "Teacher",
    },
    {
      "name": "Eyad Fahad",
      "Job": "Developer",
    }
  ];

  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: false,
        title: Text("Qtech And TechMinds", ),
        titleTextStyle: TextStyle(fontSize: 20),
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.white,)
        ),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black,
        elevation: 10,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.search, color: Colors.white,)
          ),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.share, color: Colors.white,)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image1.jpg"),
                    fit:BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 430,
                      height: 80,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(color: Colors.black.withAlpha(100))]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("welcome To my App",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>Messages()
                              ));
                            },
                            child: Text("See more..",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight:FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10,left: 30, bottom: 10 ),
              child: TextWidget(text: "Member Names"),
            ),
            Container(
                height: 380,
                width: 400,
                margin: EdgeInsets.only(left: 15),
                child: ListView.separated(
                    separatorBuilder: (context,i){
                      return SizedBox(height: 10,);
                    },
                    itemCount: Info.length,
                    itemBuilder: (context, i){
                      return  Container(
                        height: 100,
                        width: 200,
                        padding: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(200),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(50),
                              ),

                              child: const Icon(
                                Icons.person_outline,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Text(Info[i]["name"],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight:FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                            Column(
                              children: [
                                TextButton(onPressed: (){},
                                    child: Icon(Icons.phone,
                                      size: 25,
                                      color: Colors.blueAccent,
                                    )),
                                TextButton(onPressed: (){

                                },
                                    child: Icon(Icons.mail,
                                      size: 25,
                                      color: Colors.blueAccent,)),
                              ],
                            )
                          ],
                        ),
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}