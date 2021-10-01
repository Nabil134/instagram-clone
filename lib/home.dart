import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
 class Home1 extends StatefulWidget {
   const Home1({ Key? key }) : super(key: key);
 
   @override
   _Home1State createState() => _Home1State();
 }
 
 class _Home1State extends State<Home1> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: Icon(Icons.photo_camera,size: 30,color: Colors.black,),
         backgroundColor: Colors.white,
         title: Text('Instagram',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
         centerTitle: true,
         actions: [
           Container(
             height: 45,
             width:45,
             decoration: BoxDecoration(
               gradient: LinearGradient(colors: [Colors.yellow,Colors.pinkAccent]),
               shape:BoxShape.circle,
             ),//BoxDecoration
             child: Icon(Icons.live_tv,size:30,color:Colors.white),//Icon
           ),//Container
            SizedBox(width:20),
            Container(
              height: 45,
              width: 45,
               decoration: BoxDecoration(
                 shape:BoxShape.circle,
                  gradient: LinearGradient(colors: [Colors.blue,Colors.blueAccent]),

               ),//BoxDecoration
             child:Transform.rotate( angle:5.5,child:Icon(Icons.send,size:30,color:Colors.black),),//Icon

            ),//Container
         ],
       ),//AppBar
     body:ListView(
       children: [
         Container(
           padding: EdgeInsets.all(10),
           child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Stories',style: TextStyle(fontWeight: FontWeight.bold),),//Text
               Row(
                 children: [
                   Icon(Icons.play_arrow,size:20,color:Colors.black),//Icon
                   Text('Watch All',style: TextStyle(fontWeight: FontWeight.bold),),//Text
                   
                 ],
               ),

             ],
           ),

         ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 100,
          width:100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              story,
             otherstory('im1.jpg','Nabil'),
             otherstory('im2.jpg','Babar'),
             otherstory('im3.png','Huzaifa'),
             otherstory('im4.jpg','Usman'),
             otherstory('im5.png','Hamza'),
              otherstory('im2.jpg','Hammad'),
              otherstory('im3.png','Omar'),
               otherstory('im4.jpg','Adnan'),
                otherstory('im5.png','Shail'),
                 otherstory('im2.jpg','Aitezaz'),
                  otherstory('im1.jpg','Ali'),
                   otherstory('im3.png','Tahir'),
                    otherstory('im4.jpg','Saad'),
                  
            ],
          ),//ListView
        ),//Container
       card('Nabil',"I'm student of SSUET",'im1.jpg','223 Likes'),
         card('Babar',"I'm student of SSUET",'im2.jpg','104 Likes'),
           card('Huzaifa',"I'm student of SSUET",'im3.png','300 Likes'),
             card('Usman',"I'm student of SSUET",'im4.jpg','40 Likes'),
               card('Hammad',"I'm student of SSUET",'im5.png','45 Likes'),
       ],
     ),  
     );
       
   }
   final story = Column(
     children: [
       Stack(
         overflow: Overflow.visible,
         children: [
           Container(
             height: 65,
             width: 65,
             decoration: BoxDecoration(
               shape:BoxShape.circle,
               image: DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage('assets/images/im1.jpg',
                 ),
               ),//DecorationImage
             ),
           ),
          Positioned(
            bottom: 0,
            right: -10,
          child:ClipOval(child: 
        Container(
          color:Colors.blue,
          child:Icon(Icons.add,color:Colors.white),//Icon
        ),//Container
          ),
         ),// Position
         ],
       ),//Stack
     ],
   );
 }
 Widget otherstory (String img,String name){
   return Column(
     children: [
       Stack(
         children: [
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             height: 65,
             width: 65,
             decoration: BoxDecoration(
               shape:BoxShape.circle,
               image: DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage('assets/images/$img',
                 ),
               ),//DecorationImage
             ),
           ),
       
         ],
       ),//Stack
    Container(
      child:Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    ),//Container
     ],
   );

 }
Widget card(String txt,String txt1,String pic,String like){
  return Container(
    child:Card(
      child:Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child:Icon(Icons.person,size:20,color:Colors.black,),
            ),//CircleAvator
            title: Text(txt,style: TextStyle(fontWeight: FontWeight.bold),),//title
            subtitle: Text(txt1,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,
            ),),// subtitle
            trailing: Icon(Icons.more_vert,color: Colors.black, size:20),
          ),//ListTile
        Image.asset('assets/images/$pic',fit:BoxFit.fill,
        width: 900,
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Icon(Icons.favorite,size:20,color:Colors.black),
             Icon(Icons.mode_comment,size:20,color:Colors.black),
              Icon(Icons.send,size:20,color:Colors.red),
          ],),//Row
        Icon(Icons.save,size:20,color:Colors.black),
        ],
        ),//Row
         Text(like,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),//Text
        ],
      ),
    ),//Card
  );//Container
}