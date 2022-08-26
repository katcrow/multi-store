import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multistore/utillities/category_list.dart';
import '../widgets/category_widgets.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0.h),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryHeaderLabel(
                    headerLabel: 'Men',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 70.h,
                      crossAxisSpacing: 15.w,
                      crossAxisCount: 3,
                      children: List.generate(men.length - 1, (index) {
                        return SubCategoryModel(
                          mainCategoryName: 'Men',
                          subCategoryName: men[index + 1],
                          assetName: 'images/men/men${index}.jpg',
                          subCategoryLabel: men[index + 1],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(
              mainCategoryName: 'Men',
            ),
          ),
        ],
      ),
    );
  }
}
