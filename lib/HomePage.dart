import 'package:flutter/material.dart';
import 'package:untitled2/Box.dart';
import 'package:untitled2/logic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> widgets = [];
  double hight = 0;
  int ind = 1;
  bool flag = true;

  @override
  void initState() {
    genrate();
    super.initState();
  }

  void addElement() {
    print("pressed");
    widgets.clear();
    for (int i = 0; i <= ind; i++) {
      widgets.add(
          Box(hight: hight / (ind + 1), number: list[i].toString(), ind: ind));
    }
    setState(() {});
    print(widgets);
    if (ind < list.length - 1) ind++;
  }

  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height / 2;
    if (flag)
      widgets.add(Box(
        hight: hight,
        number: list[0].toString(),
        ind: 0,
      ));
    flag = false;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Column(
            children: widgets,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: addElement,
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Press here!",
                    style: TextStyle(fontSize: 18),
                  )),
                )),
          )
        ],
      ),
    );
  }
}
