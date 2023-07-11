import 'package:flutter/material.dart';
import 'package:flutter_foodmanagement/home/food_page_body.dart';
import 'package:flutter_foodmanagement/utils/colors.dart';
import 'package:flutter_foodmanagement/utils/dimensions.dart';
import 'package:flutter_foodmanagement/widgets/big_text.dart';
import 'package:flutter_foodmanagement/widgets/small_text.dart';

class MainFoogPage extends StatefulWidget {
  const MainFoogPage({Key? key}) : super(key: key);

  @override
  State<MainFoogPage> createState() => _MainFoogPageState();
}

class _MainFoogPageState extends State<MainFoogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimentions.height45, bottom: Dimentions.height15),
              padding: EdgeInsets.only(
                  left: Dimentions.width20, right: Dimentions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Turkey",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "İzmir",
                            color: Colors.black,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimentions.width45,
                      height: Dimentions.height45,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimentions.radius15),
                          color: AppColors.mainColor),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimentions.iconSize24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //body
          Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}
