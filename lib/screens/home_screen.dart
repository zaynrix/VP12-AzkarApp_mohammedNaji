import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _azkarMessage = 'أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFFF9DDA1)),
        title: Text(
          'سبحة الأذكار',
          style: TextStyle(
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
            color: Color(0xFFF9DDA1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bio_screen');
            },
            icon: Icon(Icons.info),
          ),
          PopupMenuButton<String>(
              onSelected: (value) {
                if (_azkarMessage != value) {
                  setState(() {
                    _azkarMessage = value;
                    _counter = 0;
                  });
                }
              },
              offset: Offset(10, 40),
              color: Color(0xFFF9DDA1),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    height: 25,
                    child: Text(
                      'أستغفر الله',
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                    value: 'أستغفر الله',
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    height: 25,
                    child: Text(
                      'الحمد لله',
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                    value: 'الحمد لله',
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    height: 25,
                    child: Text(
                      'سبحان الله',
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                    value: 'سبحان الله',
                  ),
                ];
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Icon(
          Icons.add,
          color: Color(0xFFF9DDA1),
        ),
        backgroundColor: Color(0xFF01322D),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF003F37), Color(0xFF3B614B)],
              begin: AlignmentDirectional.bottomEnd,
              end: AlignmentDirectional.topStart),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/tasbeeh.PNG'),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 5,
              color: Color(0xFF01322D),
              margin: EdgeInsetsDirectional.only(bottom: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _azkarMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lemonada',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF9DDA1)),
                    ),
                  ),
                  Container(
                    color: Color(0xFFCC9E6B),
                    height: 50,
                    width: 50,
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      _counter.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF9DDA1)),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                    child: Text(
                      'تسبيح',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'ElMessiri',
                        color: Color(0xFFF9DDA1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF003F37),
                      minimumSize: Size(0, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    child: Text(
                      'اعادة',
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                        color: Colors.black87
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF3B614B),
                      minimumSize: Size(0, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
