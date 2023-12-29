import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elattar/screens/manager/suppliers/add_box.dart';
import 'package:elattar/screens/manager/suppliers/modify_boxes.dart';
import 'package:flutter/material.dart';

class SuppliersData extends StatefulWidget {
  const SuppliersData({Key? key,
    required this.suppliersId,
    required this.supplierName,
    required this.supplierAddress,
    required this.supplierNumber,
  }) : super(key: key);
  static String id = 'SuppliersData';

  final String suppliersId;
  final String supplierName;
  final String supplierAddress;
  final String supplierNumber;

  @override
  State<SuppliersData> createState() => _SuppliersDataState();
}

class _SuppliersDataState extends State<SuppliersData> {
  // var refProductFireStore = FirebaseFirestore.instance.collection('Suppliers').doc(widget.productDocId);
  @override
  Widget build(BuildContext context) {
    var refFireStore = FirebaseFirestore.instance.collection('Suppliers').doc(widget.suppliersId).collection('group');
    var asd = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الأصناف',
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
        // actions: [
        //   IconButton(
        //     onPressed: ()
        //     {
        //       Navigator.of(context).pushNamed(AddBox.id);
        //     },
        //     icon: const Icon(
        //       Icons.add_box,
        //       // size: 30,
        //     ),
        //   ),
        // ],
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddBox(
                      supplierName: widget.supplierName,
                      suppliersId: widget.suppliersId,
                    )
                )
            );
          },
          // onPressed: ()
          // {
          //   Navigator.of(context).pushNamed(AddBox.id);
          // },
          icon: const Icon(
            Icons.add_box,
            // size: 30,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: refFireStore
          // .orderBy('date', descending: true)
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {return const Center(child: Text('Something went wrong'));}
            if (snapshot.connectionState == ConnectionState.waiting) {return const Center(child: Text("Loading"));}
            return GridView.builder(
              itemCount: snapshot.data!.docs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, i) {
                // String suppliersId = snapshot.data!.docs[i].id;
                // String supplierName = snapshot.data!.docs[i]['supplierName'];
                // String supplierAddress = snapshot.data!.docs[i]['supplierAddress'];
                // String supplierNumber = snapshot.data!.docs[i]['supplierNumber'];
                String groupName = snapshot.data!.docs[i]['groupName'];
                String groupSection = snapshot.data!.docs[i]['groupSection'];
                String groupCode = snapshot.data!.docs[i]['groupCode'];
                return Padding(
                  padding: EdgeInsets.only(
                    left: asd * .01,
                    right: asd * .01,
                    top: 20,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(ModifyBox.id);
                    },
                    child: Container(
                      // height: MediaQuery.of(context).size.height * .10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: AutoSizeText(
                              groupName,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              minFontSize: 10,
                              maxLines: 2,
                            ),
                          ),
                          Center(
                            child: AutoSizeText(
                              groupSection,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                              minFontSize: 5,
                              maxLines: 2,
                            ),
                          ),
                          Center(
                            child: AutoSizeText(
                              groupCode,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                              minFontSize: 5,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            );
          }
      ),
    );
  }

  widgetInkWell({name, address, number,}){
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          // height: MediaQuery.of(context).size.height * .15,
          width: mediaQueryWidth * .95,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
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
              // ),
            ),
          ),
        ),
      ],
    );

  }

  // _widget(String name,){
  //   var asd = MediaQuery.of(context).size.width;
  //   return Padding(
  //     padding: EdgeInsets.only(
  //       left: asd * .01,
  //       right: asd * .01,
  //       top: 20,
  //     ),
  //     child: InkWell(
  //       onTap: (){
  //         Navigator.of(context).pushNamed(ModifyBox.id);
  //       },
  //       child: Container(
  //         // height: MediaQuery.of(context).size.height * .10,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(35.0),
  //           border: Border.all(
  //             color: Colors.black,
  //             width: 2,
  //           ),
  //         ),
  //         child: Column(
  //           children: const [
  //             Center(
  //               child: AutoSizeText(
  //                 'إسم الصندوق',
  //                 style: TextStyle(
  //                   fontSize: 15,
  //                   color: Colors.black,
  //                 ),
  //                 minFontSize: 10,
  //                 maxLines: 2,
  //               ),
  //             ),
  //             Center(
  //               child: AutoSizeText(
  //                 'قسم الصندوق',
  //                 style: TextStyle(
  //                   fontSize: 10,
  //                   color: Colors.black,
  //                 ),
  //                 minFontSize: 5,
  //                 maxLines: 2,
  //               ),
  //             ),
  //             Center(
  //               child: AutoSizeText(
  //                 'كود الصندوق',
  //                 style: TextStyle(
  //                   fontSize: 10,
  //                   color: Colors.black,
  //                 ),
  //                 minFontSize: 5,
  //                 maxLines: 2,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

}
