import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoeshoppingapp/Component/defaultElements.dart';
import 'package:shoeshoppingapp/Models/ShoeListModel.dart';
import 'package:shoeshoppingapp/Models/categoriesModel.dart';
import 'package:shoeshoppingapp/Screens/itemsCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultElements.kdefaultbgcolor,
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(),
              buildProductSection(),
              SizedBox(
                height: 20,
              ),
              buildCategoriesSection(context),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.builder(
                    itemCount: shoeListModel.length,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => Itemcards(
                      shoeListModel: shoeListModel[index],
                      index: index,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  buildAppBar() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/menu.svg",
              height: 25,
            ),
            Expanded(
              child: Container(),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "X",
                    style: TextStyle(
                      color: DefaultElements.kprimarycolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: DefaultElements.ksecondrycolor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset(
              "assets/icons/search_icon.svg",
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Padding buildProductSection() {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: 10, right: 25),
      child: Row(
        children: [
          Text(
            "Our Product",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            "Sort by",
            style: TextStyle(
              color: DefaultElements.knavbariconcolor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 15,
            color: DefaultElements.knavbariconcolor,
          )
        ],
      ),
    );
  }

  buildCategoriesSection(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: categoriesModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      selectedIndex == index
                          ? BoxShadow(
                              color: DefaultElements.knavbariconcolor,
                              blurRadius: 10,
                              offset: Offset(0, -1))
                          : BoxShadow()
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "${categoriesModel[index].image}",
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${categoriesModel[index].title}",
                      style: TextStyle(
                        color: selectedIndex == index
                            ? DefaultElements.kprimarycolor
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: DefaultElements.knavbariconcolor,
            blurRadius: 10,
            offset: Offset(0, -1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/icons/home.svg",
            height: 30,
            color: DefaultElements.kprimarycolor,
          ),
          SvgPicture.asset(
            "assets/icons/heart.svg",
            height: 30,
            color: DefaultElements.knavbariconcolor,
          ),
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  print("Cart");
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: DefaultElements.kprimarycolor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: DefaultElements.knavbariconcolor,
                        offset: Offset(0, -1),
                        blurRadius: 8.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: SvgPicture.asset(
                      "assets/icons/cart.svg",
                      color: DefaultElements.ksecondrycolor,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                bottom: 45,
                top: 0,
                right: 0,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: DefaultElements.kdefaultredcolor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          SvgPicture.asset(
            "assets/icons/list.svg",
            height: 30,
            color: DefaultElements.knavbariconcolor,
          ),
          SvgPicture.asset(
            "assets/icons/person.svg",
            height: 30,
            color: DefaultElements.knavbariconcolor,
          ),
        ],
      ),
    );
  }
}
