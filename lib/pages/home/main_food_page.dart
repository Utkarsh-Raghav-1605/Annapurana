import 'package:annapurna/utils/colors.dart';
import 'package:annapurna/utils/dimensions.dart';
import 'package:annapurna/widgets/big_text.dart';
import 'package:annapurna/widgets/small_text.dart';
import 'package:flutter/material.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

              child: Container(
                margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15),
                  padding: EdgeInsets.only(left: Dimensions.width20, right:Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(text: "India", color: AppColors.mainColor),
                          Row(
                            children: [
                              SmallText(text:"New Delhi", color: Colors.black54),
                              const Icon(Icons.arrow_drop_down_rounded)
                            ],
                          )

                        ],
                      ),
                      Center(
                        child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          child: Icon(Icons.search, color:Colors.white, size: Dimensions.iconSize24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                            color: AppColors.mainColor ,
                          ),

                        ),
                      )
                    ],
                  )

              )
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
