import 'package:flutter/material.dart';
import 'package:haris_s_application8/core/app_export.dart';

// ignore: must_be_immutable
class EighteenItemWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  EighteenItemWidget({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: SizedBox(
        width: 160,
        height: 48,
        child: RawChip(
          padding: const EdgeInsets.only(left: 20, bottom: 12, top: 12),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Row(
            children: [
              SizedBox(
                width: 5, // Adjust the width as needed for spacing
              ),
              Text(
                text,
                style: TextStyle(
                  color: appTheme.blueA200,
                  fontSize: 14.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          avatar: CustomImageView(
            imagePath: imagePath,
            height: 34,
            width: 40,
          ),
          selected: false,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.blueA200.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueA200,
              width: 1.h,
            ),
            borderRadius: BorderRadius.circular(
              8.h,
            ),
          ),
          onSelected: (value) {},
        ),
      ),
    );
  }
}
