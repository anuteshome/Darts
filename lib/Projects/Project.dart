import "package:flutter/material.dart";

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _ResetButton() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is counter app with flutter!"),
            SizedBox(height: 20),
            Text(_counter.toString(), style: TextStyle(fontSize: 50)),
            SizedBox(height: 20),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: Text("Increase", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed:_ResetButton,
             style:ElevatedButton.styleFrom(
             backgroundColor:Colors.blue,
             shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(0),
             )
             ),
              child:Text("Reset",
              style:TextStyle(color:Colors.white)),
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
