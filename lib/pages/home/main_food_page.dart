import 'package:flutter/material.dart';
import 'package:flutter_foodmanagement/pages/home/food_page_body.dart';
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
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
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
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
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
