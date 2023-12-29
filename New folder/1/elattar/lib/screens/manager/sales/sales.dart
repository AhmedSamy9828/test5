import 'package:auto_size_text/auto_size_text.dart';
import 'package:elattar/screens/manager/sales/billed.dart';
import 'package:elattar/screens/manager/sales/sold.dart';
import 'package:flutter/material.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);
  static String id = 'Sales';

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المبيعات',
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
            Navigator.of(context).pushNamed(Sold.id);
          },
          icon: const Icon(
            Icons.point_of_sale,
            // color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            widgetInkWell(
              image: '',
              name: 'المنتج  ||  السعر',
              sale: 'الموظف المسؤل',
              tap: (){Navigator.of(context).pushNamed(Billed.id);},
              // tapWork: (){Navigator.of(context).pushNamed(EmployeeWorkFile.id);},
              // tapProfile: (){Navigator.of(context).pushNamed(EmployeeProfile.id);},
            ),
          ],
        ),
      ),
    );
  }

  widgetInkWell({image, name, sale, tap, tapWork, tapProfile}){
    return InkWell(
      onTap: tap,
      child:SizedBox(
        height: 100,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: tapProfile,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 80,
                    width:  100,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: tapWork,
                child: Column(
                  children: <Widget>[
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        // height: 90,
                        // width:  200,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AutoSizeText(
                            name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                        ),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        // height: 90,
                        // width:  200,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AutoSizeText(
                            sale,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            minFontSize: 10,
                            maxLines: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  // widgetInkWell({image, name, tap}){
  //   return InkWell(
  //     child:SizedBox(
  //       height: 100,
  //       child: Card(
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[
  //             Padding(
  //               padding: const EdgeInsets.only(left: 10),
  //               child: SizedBox(
  //                 height: 80,
  //                 width:  100,
  //                 child: Image.asset(
  //                   image,
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //             ),
  //             Directionality(
  //               textDirection: TextDirection.rtl,
  //               child: SizedBox(
  //                 height: 90,
  //                 width:  200,
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(right: 10),
  //                   child: AutoSizeText(
  //                     name,
  //                     style: const TextStyle(
  //                       fontSize: 20,
  //                       color: Colors.black,
  //                     ),
  //                     minFontSize: 10,
  //                     maxLines: 3,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     onTap: tap,
  //   );
  // }

  asd ({image, name, price}){
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8, vertical: 5,),
      child: LayoutBuilder(
          builder: (context, constrains) {
            double localHeight = constrains.maxHeight;
            double localWidth = constrains.maxWidth;
            return InkWell(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: localWidth,
                    height: localHeight * .7,
                    child: Image(
                        image: NetworkImage(
                          image,
                          // snapshot.data.docs[i].data()['image1'],
                        ),
                        fit: BoxFit.fill
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: SizedBox(
                      height: localHeight * .1,
                      child: Row(
                        children: <Widget>[
                          AutoSizeText(
                            name,
                            // '${snapshot.data.docs[i].data()['center']}''/${snapshot.data.docs[i].data()['nickName']}',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            minFontSize: 5,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: localHeight * .1,
                    child: AutoSizeText(
                      price,
                      // 'ج.م''${snapshot.data.docs[i].data()['price']}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      minFontSize: 7,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Navigator.of(context).pushNamed(ModifyAProduct.id);
                // Navigator.push(
                //     context, MaterialPageRoute(
                //     builder: (context) => DetailsBoy(
                //       idSeller: idSeller,
                //       productDocId: productDocId,
                //     )
                // )
                // );
              },
            );
          }
      ),
    );
  }
}
