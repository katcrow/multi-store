import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../minor_screens/subcategory.dart';

class SliderBar extends StatelessWidget {
  final String mainCategoryName;
  const SliderBar({
    Key? key,
    required this.mainCategoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategoryName.toUpperCase() == 'beauty'.toUpperCase()
                    ? Text('')
                    : Text(' << ', style: style),
                Text(mainCategoryName.toUpperCase(), // 'Men'.toUpperCase(),
                    style: style),
                mainCategoryName.toUpperCase() == 'men'.toUpperCase()
                    ? Text('')
                    : Text(' >> ', style: style),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle style = TextStyle(
  color: Colors.brown,
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  letterSpacing: 10,
);

class SubCategoryModel extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String subCategoryLabel;

  const SubCategoryModel({
    Key? key,
    required this.mainCategoryName,
    required this.subCategoryName,
    required this.assetName,
    required this.subCategoryLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SubCategoryProducts(
              mainCategoryName: mainCategoryName,
              subCategoryName: subCategoryName,
            ),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
            width: 70.h,
            child: Image(
              image: AssetImage(
                assetName,
              ),
            ),
          ),
          Text(subCategoryLabel, style: TextStyle(
            fontSize: 11.sp
          ),),
        ],
      ),
    );
  }
}

class CategoryHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategoryHeaderLabel({
    Key? key,
    required this.headerLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.h),
      child: Text(
        headerLabel,
        style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
