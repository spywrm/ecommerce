import 'dart:html';

import 'package:ecommerce/Women/model.dart';
import 'package:ecommerce/Women/detail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Model>? list = [];
  List<Model>? list1 = [];
  List<Model>? list2 = [];
  List<Model>? list3 = [];
  List<List> listall = [];

  List<bool> checkbar = [true, false, false, false];

  List<String> bar = ["Shirts", "Pants", "InnnerWear", "AIRism"];

  void initState() {
    createlist();
    super.initState();
  }

  List<List>? color = [];

  void createlist() {
    color!.add([0xffe6e6e6, 4, 6, 8, 10]);
    color!.add([0xff333333, 5, 3, 15, 7]);
    color!.add([0xffffcccc, 9, 10, 16, 6]);
    color!.add([0xffffb3d9, 6, 10, 7, 13]);
    color!.add([0xff994d00, 9, 5, 4, 10]);
    list!.add(
      Model(
        290.00,
        "Warm shirt",
        "shirt1.png",
        "Extra warm is 1.5 times warmer than regular HEATTECH. Ideal as innerwear or as a layering piece.",
        0xffffe6ff,
        color1: color,
        checkcolor: [true, false, false, false, false],
        checksize: [true, false, false, false],
      ),
    );
    color = [];
    color!.add([0xffd9d9d9, 9, 3, 1, 10]);
    color!.add([0xff333333, 7, 20, 15, 5]);
    color!.add([0xffe6ac00, 14, 16, 2, 9]);
    color!.add([0xffa6a6a6, 10, 14, 17, 14]);
    //color!.add([blue, 9, 3, 2, 1]);
    list!.add(Model(
      350.00,
      "Warm shirt",
      "shirt2.png",
      "The updated brushed texture is now even softer. Great for layering.",
      0xffe6e6e6,
      color1: color,
      checkcolor: [true, false, false, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffe6b3ff, 5, 2, 5, 4]);
    color!.add([0xffe6ac00, 6, 2, 7, 1]);
    color!.add([0xff808000, 13, 14, 7, 1]);
    color!.add([0xff80aaff, 1, 4, 2, 6]);
    list!.add(Model(
      323.00,
      "T-shirt",
      "shirt3.png",
      "Perfect length to pair with high-waisted bottoms. Sleek and flattering square neck.",
      0xffffeecc,
      color1: color,
      checkcolor: [true, false, false, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffffe6ff, 8, 2, 7, 9]);
    color!.add([0xffe6ccff, 1, 8, 9, 4]);
    list!.add(Model(
      144.00,
      "Shirt",
      "shirt4.png",
      "Updated with a slightly larger collar. A classic blouse with a silky texture and an elegant silhouette",
      0xffffe6e6,
      color1: color,
      checkcolor: [true, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffb3ccff, 5, 8, 1, 17]);
    list!.add(Model(
      500.00,
      "Shirt",
      "shirt5.png",
      "100% premium cotton shirt. A relaxed silhouette that is perfect for styling on its own or as an outer layer.",
      0xffe6f2ff,
      color1: color,
      checkcolor: [true],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffe6e6e6, 8, 6, 0, 2]);
    color!.add([0xff333333, 1, 7, 1, 7]);
    color!.add([0xffbf8040, 8, 12, 11, 16]);
    color!.add([0xffffc61a, 20, 15, 17, 13]);
    list!.add(Model(
      400.00,
      "T-shirt",
      "shirt6.png",
      "Ribbed fabric for an exceptional fit. Thick enough to wear on its own.",
      0xffecd9c6,
      color1: color,
      checkcolor: [true, false, false, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffffd24d, 8, 9, 5, 11]);
    color!.add([0xffb3ccff, 17, 24, 14, 15]);
    list1!.add(Model(
      1990.00,
      "Baggy Jeans MARNI",
      "pants1.png",
      "Appealing voluminous, baggy silhouette. Wear this pair loosely at the hips",
      0xfff2e6d9,
      color1: color,
      checkcolor: [true, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffb3d9ff, 1, 3, 1, 1]);
    color!.add([0xffcceeff, 4, 4, 8, 2]);
    list1!.add(Model(
      1490.00,
      "Peg Top High Rise Jeans",
      "pants2.png",
      "Cotton denim developed by Kaihara.",
      0xfff2e6d9,
      color1: color,
      checkcolor: [true, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xfff2f2f2, 1, 3, 1, 1]);
    color!.add([0xffcccccc, 4, 4, 8, 2]);
    color!.add([0xff4d4d4d, 11, 15, 2, 3]);
    list2!.add(Model(
      799.00,
      "Wireless Bra Square Neck",
      "innerwears1.png",
      "Updated cups for a more defined outline. Bonded construction for a sharp look.",
      0xffd9d9d9,
      color1: color,
      checkcolor: [true, false, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffffd9b3, 4, 4, 4, 6]);
    color!.add([0xffffddcc, 1, 5, 1, 7]);
    color!.add([0xffffcccc, 11, 4, 16, 4]);
    list2!.add(Model(
      190.00,
      "Hiphugger",
      "innerwears2.png",
      "Low rise for a sleek fit. Lace provides a comfortable fit without tightness.",
      0xffffeee6,
      color1: color,
      checkcolor: [true, false, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffb3b3ff, 17, 16, 24, 7]);
    color!.add([0xffccccff, 12, 22, 13, 15]);
    color!.add([0xff99c2ff, 6, 7, 7, 11]);
    list2!.add(Model(
      390.00,
      "Body Shaper Half Shorts",
      "innerwears3.png",
      "Shapes your tummy to create a beautiful waistline. Quick Dry technology keeps you dry and comfortable.",
      0xffe6f2ff,
      color1: color,
      checkcolor: [true, false, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffe6e6e6, 5, 6, 4, 3]);
    color!.add([0xffa6a6a6, 3, 3, 1, 8]);
    list2!.add(Model(
      290.00,
      "Maternity Shorts",
      "innerwears4.png",
      "Smooth fabric and minimal seams for a gentle fit.",
      0xffe0ebeb,
      color1: color,
      checkcolor: [true, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffb3b3cc, 6, 6, 7, 7]);
    color!.add([0xffe6ccff, 12, 15, 12, 17]);
    list3!.add(Model(
      590.00,
      "AIRism Bra Sleeveless Top",
      "AIRism1.png",
      "Flattering and comfortable fit. So smooth, you’ll never want to take it off.",
      0xffe0e0eb,
      color1: color,
      checkcolor: [true, false],
      checksize: [true, false, false, false],
    ));
    color = [];
    color!.add([0xffffcccc, 15, 16, 6, 7]);
    color!.add([0xffffb3b3, 13, 1, 1, 15]);
    color!.add([0xffffccb3, 4, 1, 6, 1]);
    list3!.add(Model(
      790.00,
      "AIRism Bra Camisole",
      "AIRism2.png",
      "Our updated bra top fits more comfortably and flatters your figure.",
      0xffffe6cc,
      color1: color,
      checkcolor: [true, false, false],
      checksize: [true, false, false, false],
    ));

    listall.add(list!);
    listall.add(list1!);
    listall.add(list2!);
    listall.add(list3!);
  }

  Widget Mybar(index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            for (int i = 0; i < bar.length; i++) {
              checkbar[i] = false;
            }
            checkbar[index] = true;
          });
        },
        child: Column(
          children: [
            Container(
              height: 25,
              alignment: Alignment.center,
              child: checkbar[index] == true
                  ? Text(bar[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                  : Text(bar[index]),
            ),
            checkbar[index] == true
                ? Row(
                    children: [
                      SizedBox(
                        width: 13,
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black45,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Container(),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Widget myModel(index, i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Detail(listall, i, index);
                      }));
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(listall[i][index].color),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image(
                          image: AssetImage("${listall[i][index].image}")),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Detail(listall, i, index + 1);
                      }));
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(listall[i][index + 1].color),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image(
                          image: AssetImage("${listall[i][index + 1].image}")),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 25),
              Expanded(
                child: Container(
                  height: 70,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("${listall[i][index].name}")),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text("THB ${listall[i][index].price}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Container(
                  height: 70,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${listall[i][index + 1].name}"),
                      SizedBox(height: 8),
                      Text("THB ${listall[i][index + 1].price}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 25),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(Icons.search_sharp, color: Colors.black),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("  Women",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Row(
            children: [
              for (int index = 0; index < bar.length; index++) Mybar(index),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                for (int i = 0; i < checkbar.length; i++)
                  if (checkbar[i] == true)
                    ListView.builder(
                      itemCount: listall[i].length,
                      itemBuilder: (context, index) {
                        if (index % 2 != 0) {
                          return Container();
                        }
                        return myModel(index, i);
                      },
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
