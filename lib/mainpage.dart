import 'package:flutter/material.dart';
import 'package:warshtyflutter/places/car1.dart';
import 'package:warshtyflutter/places/car10.dart';
import 'package:warshtyflutter/places/car2.dart';
import 'package:warshtyflutter/places/car3.dart';
import 'package:warshtyflutter/places/car4.dart';
import 'package:warshtyflutter/places/car5.dart';
import 'package:warshtyflutter/places/car6.dart';
import 'package:warshtyflutter/places/car7.dart';
import 'package:warshtyflutter/places/car8.dart';
import 'package:warshtyflutter/places/car9.dart';
import 'package:warshtyflutter/places/utils.dart';

void main() => runApp(mainpage());

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text('Warshty'),backgroundColor: Colors.redAccent,
            leading: IconButton(
                icon: Icon(Icons.search),splashColor:Colors.white,onPressed: (){showSearch(context: context, delegate: search() );})
        ),
        body: Container(color: Colors.blueGrey,
          child: ListView(
           children:<Widget> [
             Card(
               child: ListTile(
                 title:Text ("الورشة الفنية لصيانة السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(دار السلام) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car1()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("مركز المختار لصيانة السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(المعادي) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car2()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("مركز المعادي لتجديد السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(المعادي) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car3()))),
                 ),
               ),
             ),

             Card(
               child: ListTile(
                 title:Text ("الورشة الحديثة",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(المعادي) محافظة القاهرة",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car4()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("مركزالعمار لخدمات صيانة السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(سيدي بشر) محافظة الاسكندرية",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car5()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("مركز الفني الهندسي لصيانة السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(سيدي بشر) محافظة الاسكندرية",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car6()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("مركز المتحدة لصيانة السيارات الحديثة",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(محرم بك) محافظة الاسكندرية",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car7()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("ورشة الحرية لصيانة السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(الحضرة) محافظة الاسكندرية",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car8()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("الورشة الفنية لجميع السيارات",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(المنيب) محافظة الجيزة",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car9()))),
                 ),
               ),
             ),
             Card(
               child: ListTile(
                 title:Text ("مركز خدمة مرسيدس",style: TextStyle(fontSize: 20),),
                 subtitle: Text("(يافع بن زيد) محافظة الجيزة",style: TextStyle(fontSize: 20,color: Colors.black),),

                 trailing: IconButton(
                   icon: Icon(Icons.arrow_forward),onPressed: ()=> Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car10()))),
                 ),
               ),
             ),

           ],
          ),
        ),
      ),
    );
  }
}
class search extends SearchDelegate{


  @override
  List<Widget> buildActions(BuildContext context) {

    // TODO: implement buildActions
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){query="";})
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){close(context, null);});
  }

  @override
  Widget buildResults(BuildContext context) {
    List name1 = ["الورشة الفنية لصيانة السيارات",
      "مركز المختار لصيانة السيارات",
      "مركز المعادي لتجديد السيارات",
      "الورشة الحديثة",
      "مركزالعمار لخدمات صيانة السيارات",
      "مركز الفني الهندسي لصيانة السيارات","مركز المتحدة لصيانة السيارات الحديثة","ورشة الحرية لصيانة السيارات","الورشة الفنية لجميع السيارات","مركز خدمة مرسيدس"

    ];
    List filtername1= name1.where((element) => element.contains(query)).toList();
    return ListView.builder(itemCount: query=="" ? name1.length : filtername1.length,itemBuilder: (context,i){
      return InkWell(
          child:Container(
              padding: EdgeInsets.all(10),child: query ==""? Text("${name1[i]}",style: TextStyle(fontSize: 25),):Text ("${filtername1[i]}",style: TextStyle(fontSize: 25),)
          ),
          onTap: () {
            query=query==""?name1[i]:filtername1[i];
            if(query=="الورشة الفنية لصيانة السيارات"){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car1())));

            }
            else if(query=="مركز المختار لصيانة السيارات"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car2())));
            }else if(query=="مركز المعادي لتجديد السيارات"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car3())));
            }else if(query=="الورشة الحديثة"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car4())));

            }else if(query=="مركزالعمار لخدمات صيانة السيارات"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car5())));
            }else if(query=="الادارة المالية"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car6())));
            }else if(query=="مركز الفني الهندسي لصيانة السيارات"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car7())));
            }else if(query=="ورشة الحرية لصيانة السيارات"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car8())));
            }
            else if(query=="الورشة الفنية لجميع السيارات"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car9())));
            }
            else if(query=="مركز خدمة مرسيدس"){
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => (car10())));
            }
          }


      );
    });
  }


  @override
  Widget buildSuggestions(BuildContext context) {

    List name1 = ["الورشة الفنية لصيانة السيارات",
      "مركز المختار لصيانة السيارات",
      "مركز المعادي لتجديد السيارات",
      "الورشة الحديثة",
      "مركزالعمار لخدمات صيانة السيارات",
      "مركز الفني الهندسي لصيانة السيارات","مركز المتحدة لصيانة السيارات الحديثة","ورشة الحرية لصيانة السيارات","الورشة الفنية لجميع السيارات","مركز خدمة مرسيدس"

    ];
    List filtername1= name1.where((element) => element.contains(query)).toList();
    return ListView.builder(itemCount: query=="" ? name1.length : filtername1.length,
      itemBuilder: ((context,i){
        return InkWell(
            child:Container(
                padding: EdgeInsets.all(10),child: query ==""? Text("${name1[i]}",style: TextStyle(fontSize: 25),):Text ("${filtername1[i]}",style: TextStyle(fontSize: 25),)
            ),
            onTap: () {
              query=query==""?name1[i]:filtername1[i];
              if(query=="الورشة الفنية لصيانة السيارات"){
                Navigator.push(context, new MaterialPageRoute(builder: (context)=>(car1())));

              }
              else if(query=="مركز المختار لصيانة السيارات"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car2())));
              }else if(query=="مركز المعادي لتجديد السيارات"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car3())));
              }else if(query=="الورشة الحديثة"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car4())));

              }else if(query=="مركزالعمار لخدمات صيانة السيارات"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car5())));
              }else if(query=="الادارة المالية"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car6())));
              }else if(query=="مركز الفني الهندسي لصيانة السيارات"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car7())));
              }else if(query=="ورشة الحرية لصيانة السيارات"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car8())));
              }
              else if(query=="الورشة الفنية لجميع السيارات"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car9())));
              }
              else if(query=="مركز خدمة مرسيدس"){
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => (car10())));
              }
            }


        );
      }),


    );

  }

}