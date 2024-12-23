import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String Name;
  final VoidCallback onTap;
  final String? icon;
  const CustomButton(
      {Key? key, required this.Name, required this.onTap, this.icon})
      : super(key: key);

  IconData? _getIconFromString(String? iconString) {
    const Map<String, IconData> iconMapping = {
      'email': Icons.email_outlined,
      'phone': Icons.phone,
      'home': Icons.home,
      'company': Icons.apartment,
      'time': Icons.access_time,
      'Send': Icons.send_outlined,
      'copy': Icons.copy
    };
    return iconString != null ? iconMapping[iconString] : null;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff27458f),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(_getIconFromString(icon)),
            const SizedBox(
              width: 5,
            ),
            Text(Name)
          ],
        ));
  }
}
