import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '遥控器'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget createSlot() {
    return Container(
      child: Text("插槽"),
    );
  }

  Widget createButton(VoidCallback click) {
    return GestureDetector(
      onTap: click,
      child: Container(

        child: Text("按钮"),
      ),
    );
  }

  Widget glueSlotAndButton(Widget slot, Widget button) {
    return Container(
      child: Row(
        children: [
          slot,
          button
        ],
      ),
    );
  }

  test() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 800,
          color: Colors.grey,
          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(height: 50, width: 250),
                  Container(
                    child: Text("on"),
                  ),
                  Container(
                    child: Text("off"),
                  ),
                ],
              ),
              glueSlotAndButton(createSlot(), createButton(test)),
              glueSlotAndButton(createSlot(), createButton(() { })),
              glueSlotAndButton(createSlot(), createButton(() { })),
              glueSlotAndButton(createSlot(), createButton(() { })),
              glueSlotAndButton(createSlot(), createButton(() { })),
              glueSlotAndButton(createSlot(), createButton(() { })),
              glueSlotAndButton(createSlot(), createButton(() { })),
              // UNDO
              createButton(() { })
            ],
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
