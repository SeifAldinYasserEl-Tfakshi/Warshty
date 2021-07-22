import 'package:flutter/material.dart';
import 'package:warshtyflutter/booking/booking_time.dart';
import 'package:warshtyflutter/places/utils.dart';


void main() => runApp(car9());

class car9 extends StatelessWidget {
  final String title = 'الورشة الفنية لجميع السيارات';

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(centerTitle: true,
      title: Text(widget.title),backgroundColor: Colors.redAccent,
    ),
    body: Container(width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/warshty_logo.jpg"),fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          buildButton(
            text: 'الخريطة',
            onClicked: () => Utils.openLink(url: 'https://www.google.com/maps/dir/30.0594885,31.2584644/%D9%88%D8%B1%D8%B4++%D8%AA%D8%B5%D9%84%D9%8A%D8%AD+%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA+%D9%81%D9%8A+%D8%A7%D9%84%D8%AC%D9%8A%D8%B2%D8%A9%E2%80%AD%E2%80%AD/@30.023439,31.2021221,13z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x14584647eb4ebcf9:0x905d77956e32a256!2m2!1d31.2039828!2d29.9802774'),
          ),

          buildButton(
            text: 'الاتصال',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+0122 781 2462'),
          ),
          buildButton(
            text: ' رسالة',
            onClicked: () => Utils.openSMS(phoneNumber: '+0122 781 2462'),
          ),
          buildButton( text: 'الحجز',
     onClicked: () => Navigator.push(context, new MaterialPageRoute(builder: (context)=>(booking_time())))
          )
        ],
      ),
    ),
  );

  Widget buildButton({
    @required String? text,
    @required VoidCallback? onClicked,
  }) =>

      Container(
        padding: EdgeInsets.symmetric(vertical: 10 ),
        child: RaisedButton(
          shape: StadiumBorder(),
          onPressed: onClicked,
          color: Colors.red,
          textColor: Colors.white,
          child: Text(
            text!,
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
}