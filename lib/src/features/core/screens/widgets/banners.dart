import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                    Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                  ],
                ),

                const SizedBox(height: tDashboardPadding,),

                Text(tDashboardBannerTitle1, style: textTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,),
                Text(tDashboardBannerSubTitle, style: textTheme.bodyText2, maxLines: 1, overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        ),
        const SizedBox(height: tDashboardPadding,),
        Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                          Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                        ],
                      ),

                      const SizedBox(height: tDashboardPadding,),

                      Text(tDashboardBannerTitle2, style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                      Text(tDashboardBannerSubTitle, style: textTheme.bodyText2, overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity ,
                  child : OutlinedButton(onPressed: (){} , child: const Text(tDashboardButton),),
                )

              ],
            )
        ),
      ],
    );
  }
}