import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ProductDetailsScreen extends StatelessWidget
{
  const ProductDetailsScreen({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(offset: Offset(6, 10),
                        blurRadius: 10,
                        color: Colors.black)],
                          borderRadius: BorderRadius.circular(10), color: Colors.white),
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.favorite_outline, size: 30,),
                    ),
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(url))),
                  ),
                  Container(
                    color: Colors.white,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Regular Fit Slogan", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20,),
                            Text("4.5/5" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                            Text("45 reviews", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("A bag is a common tool in the form of a non-rigid container, typically made of cloth, leather, paper, or plastic.", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 10,),
                        Text("Choose Size", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Text("S", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Text("M", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, ),),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Text("L", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                    Text("Price", style: TextStyle(color: Colors.grey, fontSize: 17),),
                    Text("Rs 2500", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),)
                    ]
                ),
                SizedBox(width: 50,),
                Expanded(child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline_outlined, color: Colors.white, size: 25,),
                      SizedBox(width: 10,),
                      Text("ADD To Cart", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),)
              ],
            ),
          ),

        ],
      ),
      appBar: AppBar(
        centerTitle : true,
        title: Text(
          "Discover",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),
        actions: [
          Stack(
            children: [
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 40,
              ),
              Positioned(
                right: 5,
                top: 5,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.black,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
  }