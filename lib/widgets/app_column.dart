import 'package:annapurna/utils/colors.dart';
import 'package:annapurna/utils/dimensions.dart';
import 'package:annapurna/widgets/big_text.dart';
import 'package:annapurna/widgets/icons_and_text_widget.dart';
import 'package:annapurna/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
                children: List.generate(5, (index) => Icon(Icons.star, color:AppColors.mainColor, size: 15,))
            ),
            const SizedBox(width: 10,),
            SmallText(text: "4.5"),
            const SizedBox(width: 10,),
            SmallText(text: "1287"),
            const SizedBox(width:10),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndTextWidget(icon: Icons.circle_sharp,
                  text: "Normal",
                  iconColor: AppColors.iconColor1),
              IconAndTextWidget(icon: Icons.location_on,
                  text: "1.7km",
                  iconColor: AppColors.mainColor),
              IconAndTextWidget(icon: Icons.access_time_filled_rounded,
                  text: "32min",
                  iconColor: AppColors.iconColor2)
            ]
        )

      ],
    );
  }
}
