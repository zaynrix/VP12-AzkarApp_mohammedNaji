import 'package:flutter/material.dart';


class ContainerCard extends StatelessWidget {
  const ContainerCard({
    Key? key,
    required this.leadingIcon,
    required this.titel,
    required this.subTitel,
    required this.trailingIcon,
    required this.onPressed
  }) : super(key: key);

  final IconData leadingIcon ;
  final String titel;
  final String subTitel;
  final IconData trailingIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(41),
                blurRadius: 6,
                offset: Offset(0,3)
            )
          ]
      ),
      child: ListTile(
        title: Text(
          titel,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitel,
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        leading: Icon(
          leadingIcon,
          color: Colors.blue,
        ),
        trailing: IconButton(onPressed:onPressed, icon:Icon(trailingIcon)),
      ),
    );
  }
}
