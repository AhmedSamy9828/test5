import 'package:auto_size_text/auto_size_text.dart';
import 'package:elattar/screens/moderators/Send_The_Order.dart';
import 'package:elattar/screens/moderators/add_client.dart';
import 'package:elattar/screens/moderators/client.dart';
import 'package:flutter/material.dart';

class HomeModerators extends StatefulWidget {
  const HomeModerators({Key? key}) : super(key: key);
  static String id = 'HomeModerators';

  @override
  State<HomeModerators> createState() => _HomeModeratorsState();
}

class _HomeModeratorsState extends State<HomeModerators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'العملاء',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Colors.blue,
        elevation: 5,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: ()
            {
              Navigator.of(context).pushNamed(Client.id);
            },
            icon: const Icon(
              Icons.accessibility,
              // size: 30,
            ),
          ),
        ],
        // actions: [
        //   IconButton(
        //     onPressed: ()
        //     {
        //       // Navigator.of(context).pushNamed(AddBox.id);
        //     },
        //     icon: const Icon(
        //       Icons.add_box,
        //       // size: 30,
        //     ),
        //   ),
        // ],
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pushNamed(AddSuppliers.id);
          },
          icon: const Icon(
            Icons.settings,
            // color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            widgetInkWell(
              name: 'إسم العميل',
              address: 'عنوان العميل',
              number: '01005538792',
              onTap: (){
                Navigator.of(context).pushNamed(SendTheOrder.id);
              },
              onTapEdite: (){
                // Navigator.of(context).pushNamed(ModifySupplierData.id);
              },
            ),
          ],
        ),
      ),
    );
  }
  widgetInkWell({name, address, number, onTap, onTapEdite}){
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          // height: 200,
          width: mediaQueryWidth * .95,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: onTap,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          AutoSizeText(
                            name,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                          AutoSizeText(
                            address,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                          AutoSizeText(
                            number,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                        ]
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: onTapEdite,
                        child: const Icon(Icons.edit,),
                      ),

                    ],
                  ),
                ],
              ),
              // ),
            ),
          ),
        ),
      ],
    );

  }
}
