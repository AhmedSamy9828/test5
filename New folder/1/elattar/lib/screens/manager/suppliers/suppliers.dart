import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elattar/screens/manager/suppliers/add_suppliers.dart';
import 'package:elattar/screens/manager/suppliers/modify_supplier_data.dart';
import 'package:elattar/screens/manager/suppliers/supplier_data.dart';
import 'package:flutter/material.dart';

class Suppliers extends StatefulWidget {
  const Suppliers({Key? key}) : super(key: key);
  static String id = 'Suppliers';

  @override
  State<Suppliers> createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    var refFireStore = FirebaseFirestore.instance.collection('Suppliers');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الموردين',
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AddSuppliers.id);
          },
          icon: const Icon(
            Icons.add_business,
            // color: Colors.white,
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
                  crossAxisCount: 1,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, i) {
                  String suppliersId = snapshot.data!.docs[i].id;
                  String supplierName = snapshot.data!.docs[i]['supplierName'];
                  String supplierAddress = snapshot.data!.docs[i]['supplierAddress'];
                  String supplierNumber = snapshot.data!.docs[i]['supplierNumber'];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: mediaQueryWidth * .95,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SuppliersData(
                                                suppliersId: suppliersId,
                                                supplierName: supplierName,
                                                supplierAddress: supplierAddress,
                                                supplierNumber: supplierNumber,
                                              )
                                          )
                                      );
                                    },
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AutoSizeText(
                                            snapshot.data!.docs[i]['supplierName'],
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
                                            snapshot.data!.docs[i]['supplierAddress'],
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
                                            snapshot.data!.docs[i]['supplierNumber'],
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
                                        onTap: (){Navigator.of(context).pushNamed(ModifySupplierData.id);},
                                        child: const Icon(Icons.edit,),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
            );
          }
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
