import 'package:flutter/material.dart';
import 'package:learning/widgets/description_section.dart';
import 'package:learning/widgets/sounds_section.dart';

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  bool isSoundSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 26,
              color: Color(0xFF674AEF),
            ),
          )
        ],
      ),
      body:
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5, horizontal: 15),
              child: ListView(
                children: [
                  Container(
                    padding:EdgeInsets.all(5),
                    width:MediaQuery.of(context).size.width,
                    height:200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF5F3FF),
                      image: DecorationImage(
                      image: AssetImage("images/${widget.img}.jpg"),
                      )
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.play_arrow_rounded,
                          color: Color(0xFF674AEF),
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "${widget.img} Complete Video",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5,),
                  const Text(
                    "Created by Dear Piyada",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 5,),
                  const Text(
                    "55 video",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F3FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Material(
                          color: isSoundSection
                          ? Color(0xFF674AEF) 
                          : Color(0xFF674AEF).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                isSoundSection = true;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                              child: const Text(
                                "Sound",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                            ),
                          ),
                        ),
                        Material(
                          color: isSoundSection
                          ? Color(0xFF674AEF).withOpacity(0.6) 
                          : const Color(0xFF674AEF),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                isSoundSection = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                              child: const Text(
                                "Description",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  isSoundSection? SoundsSection() : DescriptionSection(),
                ],
              ),
            ),
    );
  }
}
