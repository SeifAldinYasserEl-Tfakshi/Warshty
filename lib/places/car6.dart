import 'package:flutter/material.dart';
import 'package:warshtyflutter/booking/booking_time.dart';
import 'package:warshtyflutter/places/utils.dart';


void main() => runApp(car6());

class car6 extends StatelessWidget {
  final String title = 'مركز الفني الهندسي لصيانة السيارات';

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
            onClicked: () => Utils.openLink(url: 'https://www.google.com/maps/dir/30.0594885,31.2584644/%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D9%81%D9%86%D9%8A+%D9%84%D8%B5%D9%8A%D8%A7%D9%86%D8%A9+%D8%A7%D9%84%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA+%D8%B3%D9%8A%D8%AF%D9%8A+%D8%A8%D8%B4%D8%B1%E2%80%AD%E2%80%AD/@30.6544755,29.3997574,8z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x14f5dbdf6beecfd7:0xf9f1c780908dd19f!2m2!1d29.9971509!2d31.2642327'),
          ),

          buildButton(
            text: 'الاتصال',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+0102 982 2285'),
          ),
          buildButton(
            text: ' رسالة',
            onClicked: () => Utils.openSMS(phoneNumber: '+0102 982 2285'),
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