import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoeshoppingapp/Component/defaultElements.dart';

class DetailScreen extends StatefulWidget {
  final String shoeimage;
  final String persentage;
  final String shoeName;
  final String price;
  final String rating;
  final bool showpersentage;
  final bool activeheart;
  final Color showcasebgcolor;
  final Color lightShowcasebgcolor;

  const DetailScreen(
      {Key key,
      this.shoeimage,
      this.persentage,
      this.shoeName,
      this.price,
      this.rating,
      this.showpersentage,
      this.activeheart,
      this.showcasebgcolor,
      this.lightShowcasebgcolor})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = 0;
  int selectedColorIndex = 0;
  List<String> shoeShize = [
    "US 6",
    "US 7",
    "US 8",
    "US 9",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              buildAppBar(),
              widget.showpersentage
                  ? Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        color: DefaultElements.ksecondrycolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "${widget.persentage}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 5,
              ),
              buildShoeShowcase(context),
              Expanded(
                child: Container(),
              ),
              buildPriceSectionArea(context),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: DefaultElements.knavbariconcolor,
                      blurRadius: 2,
                      offset: Offset(0, -1),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "${widget.price}",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Color(0xffF7F7F7),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/cart.svg",
                                height: 20,
                                color: DefaultElements.kprimarycolor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Add To Cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: DefaultElements.kprimarycolor),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
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
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: DefaultElements.kdefaultredcolor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: DefaultElements.knavbariconcolor,
                      blurRadius: 10,
                      offset: Offset(0, -1),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  height: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildShoeShowcase(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.75,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.showcasebgcolor,
                width: 2,
              )),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.75,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: widget.showcasebgcolor,
                    width: 2,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.75,
                  decoration: BoxDecoration(
                    color: widget.showcasebgcolor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.75,
                      decoration: BoxDecoration(
                        color: widget.lightShowcasebgcolor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 80,
          left: 50,
          bottom: 0,
          child: Hero(
            tag: widget.shoeimage,
            child: Image.asset(
              "${widget.shoeimage}",
              height: 100,
            ),
          ),
        )
      ],
    );
  }

  buildPriceSectionArea(BuildContext contex) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.3,
      decoration: BoxDecoration(
          color: Color(0xffF7F7F7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: DefaultElements.knavbariconcolor,
                offset: Offset(0, -1),
                blurRadius: 2),
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.shoeName}",
                  style: TextStyle(
                    fontSize: 30,
                    color: DefaultElements.kprimarycolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Color(0xffFDD446),
                    ),
                    Text(
                      "${widget.rating}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Built for natural motion, the Nike Flex Shoes",
              style: TextStyle(
                fontSize: 18,
                color: DefaultElements.kprimarycolor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Size:",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.35,
                  child: Center(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: shoeShize.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            minWidth: 50,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: selectedIndex == index
                                ? DefaultElements.ksecondrycolor
                                : Colors.white,
                            child: Center(
                              child: Text(
                                shoeShize[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Available Color:",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 12),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedColorIndex = index;
                                });
                              },
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedColorIndex == index
                                      ? DefaultElements
                                          .kshoerepplecolorOptions[index]
                                      : Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: DefaultElements
                                          .kshoecolorOptions[index],
                                    ),
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
