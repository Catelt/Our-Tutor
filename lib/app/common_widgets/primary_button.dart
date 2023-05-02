import 'package:flutter/material.dart';
import '../constants/app_size.dart';
import '../constants/base_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.isLoading = false,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
  });

  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? CircularProgressIndicator(
                color: foregroundColor,
              )
            : Text(
                text,
                style: BaseTextStyle.button(),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
