import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( MyApp());
} 

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDatalist=[
      {
    "name": "Sky",
    "dp": "https://images.pexels.com/photos/27593745/pexels-photo-27593745/free-photo-of-luan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "bg": "https://images.pexels.com/photos/27630047/pexels-photo-27630047/free-photo-of-windows-autumn.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  },
  {
    "name": "Luna",
    "dp": "https://images.pexels.com/photos/27626066/pexels-photo-27626066/free-photo-of-egret.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "bg": "https://images.pexels.com/photos/27626066/pexels-photo-27626066/free-photo-of-egret.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  },
  {
    "name": "Nova",
    "dp": "https://images.pexels.com/photos/25255043/pexels-photo-25255043/free-photo-of-entrance-with-arc.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "bg": "https://images.pexels.com/photos/25255043/pexels-photo-25255043/free-photo-of-entrance-with-arc.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  },
  {
    "name": "Orion",
    "dp": "https://images.pexels.com/photos/25244939/pexels-photo-25244939/free-photo-of-swoyambhu-mahachaitya-in-kathmandu-in-nepal.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "bg": "https://images.pexels.com/photos/25244939/pexels-photo-25244939/free-photo-of-swoyambhu-mahachaitya-in-kathmandu-in-nepal.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  },
  {
    "name": "Celeste",
    "dp": "https://images.pexels.com/photos/27412350/pexels-photo-27412350/free-photo-of-a-living-room-with-a-couch-coffee-table-and-plants.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "bg": "https://images.pexels.com/photos/27412350/pexels-photo-27412350/free-photo-of-a-living-room-with-a-couch-coffee-table-and-plants.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  },
      {"name":"Marie","dp":"https://images.pexels.com/photos/27593745/pexels-photo-27593745/free-photo-of-luan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load", "bg":"https://images.pexels.com/photos/27643534/pexels-photo-27643534/free-photo-of-glass-of-fruit-cocktail.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"}
    ];
    return  MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: myDatalist.length,
            itemBuilder:(context, index) => Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20 ),
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.cover,image:NetworkImage(
                  myDatalist[index]["bg"]

                ))),


            child: Column(children: [
              Divider(thickness: 3,color: Colors.white,
              ),
              ListTile(leading: CircleAvatar(backgroundImage: NetworkImage(myDatalist[index]["bg"]),
              ),title:Text(myDatalist[index]["name"],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              ) ,
              subtitle: Text("Username",
              style: TextStyle(color: Colors.white,fontSize: 12),
              ),
              trailing: Icon(Icons.more_vert,color: Colors.white,),
              ),
              Spacer(),
              Row(
                children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50  ),
                    border: Border.all(
                      color: Colors.white,width: 1.5, )
                      ),
                      child: Text("Send Message",
                                style: TextStyle(color: Colors.white,
                                fontSize: 14),
                      ),
                      
                      ),
                       
                    
                ),
                SizedBox(width: 15,),
                    Icon(Icons.favorite_outline,
                    color: Colors.white,
                    size: 40,
                     
                    
                    ),
                    Icon(Icons.send,
                    color: Colors.white,
                    size: 40,
                    )

                ],)
            ],),   
            ) ,
          ),
        ),
      ),
    );
  }
}
  