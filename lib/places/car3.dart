import 'package:flutter/material.dart';
import 'package:warshtyflutter/booking/booking_time.dart';
import 'package:warshtyflutter/places/utils.dart';


void main() => runApp(car3());

class car3 extends StatelessWidget {
  final String title = 'مركز المعادي لتجديد السيارات';

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
            onClicked: () => Utils.openLink(url: 'https://www.google.com/maps/dir//%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D9%85%D8%B9%D8%A7%D8%AF%D9%8A+%D9%84%D8%AA%D8%AC%D8%AF%D9%8A%D8%AF+%D8%A7%D9%84%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA%E2%80%AD/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x1458478a36ad0fc5:0xb8b14cd3d1fd9721?sa=X&ved=2ahUKEwiGnv6L2pLxAhWhx4UKHYxtA6AQ9RcwE3oECDgQAw'),
          ),

          buildButton(
            text: 'الاتصال',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+0100 531 1875'),
          ),
          buildButton(
            text: ' رسالة',
            onClicked: () => Utils.openSMS(phoneNumber: '+0100 531 1875'),
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