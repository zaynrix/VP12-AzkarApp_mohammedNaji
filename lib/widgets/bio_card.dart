import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    this.marginBottom=0,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onPressed
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.only(left: 20,right: 20,bottom:marginBottom ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        leading: Icon(leadingIcon),
        trailing:
        IconButton(onPressed: onPressed, icon: Icon(trailingIcon)),
      ),
    );
  }
}
