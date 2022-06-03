import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/mock_data/category_data.dart';
import 'package:capstone_flutter/models/sub_category.dart';
import 'package:capstone_flutter/widgets/custom_drop_down.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class CategoryAndSubCategory extends StatefulWidget {
  const CategoryAndSubCategory({Key? key}) : super(key: key);

  @override
  State<CategoryAndSubCategory> createState() => _CategoryAndSubCategoryState();
}

class _CategoryAndSubCategoryState extends State<CategoryAndSubCategory> {
  String categoryValue = 'UI/UX Design';
  String? subCategoryValue;
  List<SubCategory> subCategoryList = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;
    return Column(
      children: [
        const VerticalHeightSpacing(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sofia',
                  ),
            ),
            const VerticalHeightSpacing(height: 15),
            CustomDropDown(
              size: size.width,
              value: categoryValue,
              menuItems: CategoryData.categories
                  .map(
                    (menuItem) => DropdownMenuItem<String>(
                      value: menuItem.name,
                      child: Text(
                        menuItem.name,
                        textScaleFactor: scale,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (String? newValue) {
                final subCat = CategoryData.categories.where((element) => element.name == newValue).toList();
                subCategoryList = subCat[0].subCategory.cast<SubCategory>();
                setState(() {
                  categoryValue = newValue!;
                  subCategoryValue = subCategoryList[0].name;
                });
              },
            ),
          ],
        ),
        const VerticalHeightSpacing(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subCategory,
              textScaleFactor: scale,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sofia',
                  ),
            ),
            const VerticalHeightSpacing(height: 15),
            CustomDropDown(
              size: size.width,
              menuItems: subCategoryList
                  .map((menuItem) => DropdownMenuItem<String>(
                        value: menuItem.name,
                        child: Text(
                          menuItem.name,
                          textScaleFactor: scale,
                        ),
                      ))
                  .toList(),
              value: subCategoryValue ?? '',
              onChanged: (String? newValue) => setState(() => subCategoryValue = newValue!),
            ),
          ],
        ),
      ],
    );
  }
}
