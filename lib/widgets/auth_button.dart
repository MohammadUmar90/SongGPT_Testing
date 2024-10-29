import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;

  const AuthButton({
    Key? key,
    required this.text,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Theme.of(context).colorScheme.primary;
    final Color textColor = Theme.of(context).colorScheme.onPrimary;

    return ElevatedButton.icon(
      icon: icon != null ? Icon(icon, size: 24, color: textColor) : SizedBox.shrink(),
      label: Text(
        text,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}
