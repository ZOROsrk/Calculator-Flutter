import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var v1=0,v2=0,result=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
   void clear(){
      setState(() {
       t1.text="0";
      t2.text="0"; 
      });
    }
  void add(){
    setState(() {
      v1=int.parse(t1.text);
      v2=int.parse(t2.text);
      result=v1+v2;
      
    });
  }
  void mul(){
    setState(() {
      v1=int.parse(t1.text);
      v2=int.parse(t2.text);
      result=v1+v2;
      
    });
  }
  void sub(){
    setState(() {
      v1=int.parse(t1.text);
      v2=int.parse(t2.text);
      result=v1-v2;
      
    });
  }
  void div(){
    setState(() {
      v1=int.parse(t1.text);
      v2=int.parse(t2.text);
      if(v2!=0)
      {
        result=(v1~/v2) ;
      }
      else
      result=00;      
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        
        child: new Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: <Widget>[
            new Text(
            "Output:$result",
            style: new TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.bold),
          ),
                        
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the number"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the number"
              ),
              controller:t2,            
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                color: Colors.blue,
                child: new Text("+"),
                onPressed: add,
              ),
              new MaterialButton(
                color:Colors.blue,
                child: new Text("-"),
                onPressed: sub,
              )
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 20.0),
          ),
           new Row(
             mainAxisAlignment:MainAxisAlignment.spaceEvenly,
             
            children: <Widget>[
              new MaterialButton(
                color:Colors.blue,
                child: new Text("*"),
                onPressed: mul,
              ),
              new MaterialButton(
                color: Colors.blue,
                child: new Text("/"),
                onPressed: div,
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MaterialButton(
                color: Colors.blue,
                child: new Text("Clear"),
                onPressed: clear,
                
              )
            ],
          )
          ],
          
        
        ),
      ),
    );
  }
}