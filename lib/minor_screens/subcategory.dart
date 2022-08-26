import 'package:flutter/material.dart';
import 'package:multistore/utillities/category_list.dart';

class SubCategoryProducts extends StatefulWidget {
  final String mainCategoryName;
  final String subCategoryName;

  const SubCategoryProducts({
    Key? key,
    required this.subCategoryName,
    required this.mainCategoryName,
  }) : super(key: key);

  @override
  State<SubCategoryProducts> createState() => _SubCategoryProductsState();
}

class _SubCategoryProductsState extends State<SubCategoryProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          widget.subCategoryName,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Text(widget.mainCategoryName),
      ),
    );
  }
}
