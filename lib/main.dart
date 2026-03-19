import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_bootstrap/src/widgets/bootstrap_box.dart';
import 'package:flutter_bootstrap/src/widgets/bootstrap_small_box.dart';

void main() {
  runApp(const BootstrapApp());
}

class BootstrapApp extends StatelessWidget {
  const BootstrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Flutter Bootstrap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const BootstrapHome(),
    );
  }
}

class BootstrapHome extends StatelessWidget {
  const BootstrapHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Advanced Flutter Bootstrap"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BootstrapContainer(
              fluid: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                 Text("Responsive Grid", style: TextStyle(fontSize: 22)),
                  BootstrapRow(
                    gutter: 16,
                    children: [
                      BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.red,text:  "Col 1")),
                      BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.blue,text:  "Col 2")),
                      BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.green,text:  "Col 3")),
                      BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.orange,text:  "Col 4")),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text("Offset Example", style: TextStyle(fontSize: 22)),
                  SizedBox(height: 10,),
                  BootstrapRow(
                    children: [
                      BootstrapColumn(
                        xs: 7,
                        offset: 2,
                        child: Box(color: Colors.purple,text:  "Centered using Offset"),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("Auto Layout", style: TextStyle(fontSize: 22)),
                  Row(
                    children: [
                      BootstrapColumn(auto: true, child: Box(color: Colors.teal,text: "Auto")),
                      SizedBox(width: 10,),
                      BootstrapColumn(auto: true, child: Box(color: Colors.brown,text: "Auto")),
                      SizedBox(width: 10,),
                      BootstrapColumn(auto: true, child: Box(color: Colors.pink,text: "Auto")),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text("Nested Grid", style: TextStyle(fontSize: 22)),
                  BootstrapRow(
                    children: [
                      BootstrapColumn(
                        xs: 12,
                        md: 6,
                        child: Container(
                          color: Colors.grey.shade300,
                          padding: EdgeInsets.all(10),
                          child: BootstrapRow(
                            children: [
                              BootstrapColumn(xs: 6, child: SmallBox(color:Colors.deepOrange,text:  "Nested 1")),
                              BootstrapColumn(xs: 6, child: SmallBox(color: Colors.indigo,text:  "Nested 2")),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      BootstrapColumn(
                        xs: 12,
                        md: 6,
                        child: Box(color: Colors.cyan,text: "Right Side"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  BootstrapVisibility(
                    visibleOn: const ['lg', 'xl'],
                    child: Box(color: Colors.deepPurple,text:  "Visible only on Desktop"),
                  ),
                  SizedBox(height: 20),
                  BootstrapBuilder(
                    builder: (bp) {
                      return Box(
                        color: Colors.amber,
                        text: "Current Breakpoint : $bp",
                      );
                    },
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            BootstrapContainer(
              fluid: true,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Full Width Fluid Section",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}