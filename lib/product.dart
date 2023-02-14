import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int i = 1;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              setState(
                () {
                  Navigator.pop(context);
                  data.clear();
                },
              );
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  "${data[0]}",
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                )),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${data[2]}", style: TextStyle(fontSize: 30)),
                          Container(
                            height: 30,
                            width: 30,
                            child: FloatingActionButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (a == 0) {
                                      a = 1;
                                    } else {
                                      a = 0;
                                    }
                                  },
                                );
                              },
                              child: Icon(Icons.favorite,
                                  color: a == 0 ? (Colors.white) : (Colors.red),
                                  size: a == 0 ? 15 : 25),
                            ),
                          ),
                        ],
                      ),
                      Text("\$ ${data[1]}",
                          style: TextStyle(fontSize: 20, color: Colors.grey)),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Wireless Carrier        :",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Operating System     :",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Cellular Technology  :",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Storage Capacity       :",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Device Interface        :",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Screen Size                :",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Text("${data[3]}", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Text(
                        "Quantity",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(75),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  shape: BoxShape.circle),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (i > 1) {
                                      i--;
                                    } else {
                                      i = 1;
                                    }
                                  });
                                },
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.blue),
                                ),
                                backgroundColor: Colors.grey.shade300,
                                elevation: 0,
                              ),
                            ),
                            Text("$i"),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  i++;
                                });
                              },
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ ${data[1] * i}",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 40)),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Add to cart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
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
