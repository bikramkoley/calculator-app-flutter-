import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0,num2=0,sum=0;
  final TextEditingController t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");
  void doAddition(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });}
    void dosub(){
      setState(() {
        num1=int.parse(t1.text);
        num2=int.parse(t2.text);
        sum=num1-num2;
      });}
      void domul(){
        setState(() {
          num1=int.parse(t1.text);
          num2=int.parse(t2.text);
          sum=num1*num2;
        });}
        void dodiv(){
          setState(() {
            num1=int.parse(t1.text);
            num2=int.parse(t2.text);
            sum=num1 ~/ num2;
          });}
  void doClear(){
    setState(() {
      t1.text="0";t2.text="0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(50.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "enter number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "enter number 2"
              ),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("+"),
                    color: Colors.redAccent,
                    onPressed: (){doAddition();}),
                new RaisedButton(
                    child: new Text("-"),
                    color: Colors.redAccent,
                    onPressed: (){dosub();}),
              ],
            ),
        // new Padding(padding: const EdgeInsets.only(top: 20.0)),
        new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new RaisedButton(
              child: new Text("*"),
              color: Colors.redAccent,
              onPressed: (){domul();}),
          new RaisedButton(
              child: new Text("/"),
              color: Colors.redAccent,
              onPressed: (){dodiv();}),
        ],
        ),
            new Text("output: $sum ",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(

                    child: new Text("Clear"),
                    color: Colors.black38,
                    onPressed: (){doClear();})
              ],
            )
          ],
        ),
      ),
    );
  }
}
