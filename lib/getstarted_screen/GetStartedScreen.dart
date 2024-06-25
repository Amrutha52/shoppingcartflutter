import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui14062024/home_screen/home_screen.dart';

class GetStartedScreen extends StatelessWidget
{
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage("https://images.pexels.com/photos/935760/pexels-photo-935760.jpeg?auto=compress&cs=tinysrgb&w=600"))
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: ()
              {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 25),),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_right_outlined, color: Colors.white, size: 30,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );

  }
}