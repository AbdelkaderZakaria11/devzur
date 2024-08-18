import 'package:devzur/frontend/connection/constant/lists.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/global/theme/style/decoration.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({super.key});

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  String _currentItem = "";
  @override
  void initState() {
    _currentItem = listCategory[0];
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            listCategory.length,
            (index) {
              var category = listCategory[index];
              return Container(
                height: 35,
                margin: EdgeInsets.fromLTRB(index == 0 ? 0 : 5, 5, 5, 5),
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                decoration: _currentItem == category
                    ? decoration
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _currentItem = category;
                    });
                  },
                  child: Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        color: _currentItem == category
                            ? Colors.white
                            : ColorApp.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
