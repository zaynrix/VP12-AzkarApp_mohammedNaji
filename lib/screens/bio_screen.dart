import 'package:azkar_application/widgets/bio_card.dart';
import 'package:azkar_application/widgets/container_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Bio',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/backgroundBio.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
                radius: 45,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mohammed Mohammed Naji',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Flutter Course - Vision plus company',
                style: TextStyle(fontSize: 17, color: Colors.black54),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 3,
                color: Colors.black38,
                height: 20,
                endIndent: 30,
                indent: 30,
              ),
              SizedBox(
                height: 10,
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'mohammed.najy55@gmail.com',
                trailingIcon: Icons.send,
                onPressed: () {
                  print('Email');
                },
                marginBottom: 10,
              ),
              BioCard(
                leadingIcon: Icons.phone_android,
                title: 'Phone',
                subTitle: '+972592663280',
                onPressed: () {
                  print('Phone');
                },
                trailingIcon: Icons.phone,
                marginBottom: 10,
              ),
              ContainerCard(
                leadingIcon: Icons.facebook,
                titel: 'Facebook',
                subTitel: 'Mohammed Naji',
                trailingIcon: Icons.share,
                onPressed: () {
                  print('share');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('send phone num'),
                      backgroundColor: Colors.lightBlue,
                      // onVisible: ()=>Text('Dismiss'),
                      action: SnackBarAction(
                        label: 'Dismiss',
                        onPressed: (){},
                        disabledTextColor: Colors.yellow,
                        textColor: Colors.yellow,
                      ),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsetsDirectional.only(start: 10,end: 10,top: 10,bottom: 10),
                      duration: Duration(seconds: 6),


                    ),
                  );
                },
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Flutter 2022'),
              ),
            ],
          ),
          // Positioned(
          //    bottom: 10,
          //    left: 0,
          //    right: 0,
          //   child: Text("Flutter Course",textAlign: TextAlign.center,),
          // ),
        ],
      ),
    );
  }
}
