import 'package:flutter/material.dart';

class HeaderDownloadButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback onTap;
  final bool isHeader;
  const HeaderDownloadButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.text,
      this.isHeader = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: isHeader
            ? EdgeInsets.symmetric(horizontal: 52, vertical: 12)
            : EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
