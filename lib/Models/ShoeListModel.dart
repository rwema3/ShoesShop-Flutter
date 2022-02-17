import 'package:flutter/material.dart';
import 'package:shoeshoppingapp/Component/defaultElements.dart';

class ShoeListModel {
  String shoeimage;
  String persentage;
  String shoeName;
  String price;
  String rating;
  bool showpersentage;
  bool activeheart;
  Color showcasebgcolor;
  Color lightShowcasebgcolor;

  ShoeListModel({
    this.shoeimage,
    this.persentage,
    this.shoeName,
    this.price,
    this.rating,
    this.showpersentage = false,
    this.activeheart = false,
    this.showcasebgcolor,
    this.lightShowcasebgcolor,
  });
}

List<ShoeListModel> shoeListModel = [
  ShoeListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorpink,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorpink,
    shoeimage: "assets/images/shoe1.png",
    persentage: "30%",
    shoeName: "Nike Air Max 20",
    price: "\$" + "240.00",
    rating: "(4.5)",
    showpersentage: true,
    activeheart: false,
  ),
  ShoeListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorblue,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorblue,
    shoeimage: "assets/images/shoe2.png",
    persentage: "30%",
    shoeName: "Excee Sneakers",
    price: "\$" + "260.00",
    rating: "(3.0)",
    showpersentage: false,
    activeheart: true,
  ),
  ShoeListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorgreen,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorgreen,
    shoeimage: "assets/images/shoe3.png",
    persentage: "30%",
    shoeName: "Air Max Motions 2",
    price: "\$" + "290.00",
    rating: "(3.0)",
    showpersentage: false,
    activeheart: false,
  ),
  ShoeListModel(
    showcasebgcolor: DefaultElements.kshoebgcoloryellow,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcoloryellow,
    shoeimage: "assets/images/shoe4.png",
    persentage: "40%",
    shoeName: "Leather Sneakers",
    price: "\$" + "270.00",
    rating: "(4.5)",
    showpersentage: true,
    activeheart: false,
  ),
];
