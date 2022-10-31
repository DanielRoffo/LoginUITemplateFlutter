import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_template_flutter/src/constants/colors.dart';
import 'package:login_ui_template_flutter/src/constants/sizes.dart';
import 'package:login_ui_template_flutter/src/constants/text_strings.dart';
import 'package:login_ui_template_flutter/src/features/core/screens/widgets/appbar.dart';
import 'package:login_ui_template_flutter/src/features/core/screens/widgets/banners.dart';
import 'package:login_ui_template_flutter/src/features/core/screens/widgets/categories.dart';
import 'package:login_ui_template_flutter/src/features/core/screens/widgets/search.dart';
import 'package:login_ui_template_flutter/src/features/core/screens/widgets/top_courses.dart';

import '../../../constants/image_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDashboardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(tDashboardTitle, style: textTheme.bodyText2),
            Text(tDashboardHeading, style: textTheme.headline2),
            const SizedBox(height: tDashboardPadding,),

            //Search Box
            DashboardSearchBox(textTheme: textTheme),
            const SizedBox(height: tDashboardPadding,),

            //Categories
            DashboardCategories(textTheme: textTheme),
            const SizedBox(height: tDashboardPadding,),

            //Banners
            DashboardBanners(textTheme: textTheme),

            //Top Courses
            Text(tDashboardTopCourses, style: textTheme.headline4?.apply(fontSizeFactor: 1.2),),
            TopCourses(textTheme: textTheme)
          ],
        ),
      )),
    );
  }
}










