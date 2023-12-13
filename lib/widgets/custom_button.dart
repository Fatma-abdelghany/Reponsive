import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.text, required this.onBtnPressed, super.key});

  final String text;
  final void Function()? onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onBtnPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        //elevation: 20,
        backgroundColor: Colors.white,
        shadowColor: Theme.of(context).primaryColor,
        fixedSize:  Size(200.w, 50.h),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
        ),
        // Spacer(),
        Container(
          width: 30.w,
          height: 30.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.red,
            size: 24.0,
          ),
        ),
      ]),
    );
  }
}
