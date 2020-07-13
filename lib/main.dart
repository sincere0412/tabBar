import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin  {
  var title = "My App";
  TabController myTabController;

  @override
  void initState() {
    // TODO: implement initState
    myTabController = TabController(vsync: this, length: 4, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
         title: Text("Luis The Tech Guy! ", style: TextStyle(color: Colors.red),),
            bottom: TabBar(
              controller: myTabController,
              indicatorColor: Colors.black,
              indicator: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50.0)
              ),
              unselectedLabelColor: Colors.redAccent,
              tabs: [
                Tab(child: Text('One'),),
                Tab(child: Text('Two'),),
                Tab(child: Text('Three'),),
                Tab(child: Text('four'),),

              ],
            ),
        ),
        body: TabBarView(
          controller: myTabController,
          children: [
            Icon(Icons.looks_one),
            Icon(Icons.looks_two),
            Icon(Icons.threed_rotation),
            Icon(Icons.four_k),
          ],
        )
      ),
    );
  }
}
