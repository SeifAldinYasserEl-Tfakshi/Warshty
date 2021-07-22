import 'package:flutter/material.dart';
import 'package:warshtyflutter/booking/booking_time.dart';
import 'package:warshtyflutter/places/utils.dart';


void main() => runApp(car4());

class car4 extends StatelessWidget {
  final String title = 'الورشة الحديثة';

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
            onClicked: () => Utils.openLink(url: 'https://www.google.com/maps/dir//%D8%A7%D9%84%D9%88%D8%B1%D8%B4%D8%A9+%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%AB%D8%A9%E2%80%AD/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x1458478a4a8d0be5:0xb84cdad61f6b160b?sa=X&ved=2ahUKEwiCstmA3JLxAhXnyYUKHSGuApsQ9RcwAHoECAYQAw'),
          ),

          buildButton(
            text: 'الاتصال',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+0100 116 9460'),
          ),
          buildButton(
            text: ' رسالة',
            onClicked: () => Utils.openSMS(phoneNumber: '+0100 116 9460'),
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