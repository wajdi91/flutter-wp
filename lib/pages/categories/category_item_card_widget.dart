import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wajdiichhhh/models/category_model.dart';
import 'package:wajdiichhhh/utils/colors.dart';

class CategoryItemCardWidget extends StatefulWidget {
  const CategoryItemCardWidget(
      {super.key, required this.item, this.color = Colors.blue});

  final CategoryModel item;
  final Color color;

  @override
  State<CategoryItemCardWidget> createState() => _CategoryItemCardWidgetState();
}

class _CategoryItemCardWidgetState extends State<CategoryItemCardWidget> {
  final double height = 150.0;

  final double width = 175.0;

  final Color borderColor = AppColors.darkGrey;

  final double borderRadius = 18;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: widget.color.withOpacity(.1),
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  child: SizedBox(
                    width: 80,
                    child: Image.network(widget.item.image!.url!),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
          child: Text(widget.item.categoryName!, style: const TextStyle(fontSize: 12),textAlign: TextAlign.center,),
        )
      ],
    );
  }
}
