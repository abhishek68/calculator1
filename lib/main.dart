import 'package:flutter/material.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class  HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
  }


class  HomePageState extends State< HomePage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Text('Calculator')),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(text1,style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w400),)
            )),
            Row(
              children: <Widget>[
                customOutlineButton("9"),
                customOutlineButton("8"),
                customOutlineButton("7"),
                customOutlineButton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("4"),
                customOutlineButton("5"),
                customOutlineButton("6"),
                customOutlineButton("c"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("1"),
                customOutlineButton("2"),
                customOutlineButton("3"),
                customOutlineButton("="),
              ],
            )
          ],
        ),
      )
    );
  }

 Widget customOutlineButton(String val) {
    return Expanded(
      child:OutlineButton(
                  padding: EdgeInsets.all(25.0),
                  onPressed: () =>btnClicked(val),
                  child:Text(val,
                  style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w500),
                  ),
                  ));
  }
                 int first,second;
              String result,text1=" ";
              String opp;
           void btnClicked(String bntText)
           {
             if(bntText=="c"){
               result="";
               text1="";
               first=0;
               second=0;

             }
             else if(bntText=="+"){
               first=int.parse(text1);
               result="";
               opp=bntText;
             }
             else if(bntText=="="){
               second=int.parse(text1);
                       if(opp=="+"){
                         result=(first+second).toString();
                       }
             }
             else{
               result=int.parse(text1+bntText).toString();
             }

                 setState(() {
                   text1=result;
                 });
           }
}


