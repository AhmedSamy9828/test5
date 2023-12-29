import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Billed extends StatefulWidget {
  const Billed({Key? key}) : super(key: key);
  static String id = 'Billed';

  @override
  State<Billed> createState() => _BilledState();
}

class _BilledState extends State<Billed> {
  // final _product = ['small', 'large'];
  // String? _select = 'small';
  // TextEditingController _date = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'طباعه فاتوره',
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
        //       // Navigator.of(context).pushNamed(Map.id);
        //     },
        //     icon: const Icon(
        //       Icons.add_box,
        //       // size: 30,
        //     ),
        //   ),
        // ],
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pushNamed(AddSuppliers.id);
        //   },
        //   icon: const Icon(
        //     Icons.add_business,
        //     // color: Colors.white,
        //   ),
        // ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child:  Form(
          key: formstate,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    const SizedBox(height: 20,),
                    const Text('بيانات العميل', style: TextStyle(fontSize: 25),),
                    // const SizedBox(height: 15,),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        title: Text('إسم العميل', style: TextStyle(color: Colors.black),),
                        // subtitle: Text(name ?? 'إسم المستخدم'),
                        // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        title: Text('عنوان العميل', style: TextStyle(color: Colors.black),),
                        // subtitle: Text(name ?? 'إسم المستخدم'),
                        // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        title: Text('رقم العميل', style: TextStyle(color: Colors.black),),
                        // subtitle: Text(name ?? 'إسم المستخدم'),
                        // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        title: Text('تاريخ الطلبيه', style: TextStyle(color: Colors.black),),
                        // subtitle: Text(name ?? 'إسم المستخدم'),
                        // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text('بيانات الطلبيه', style: TextStyle(fontSize: 25),),
                    widgetInkWell(
                      name: 'كود المنتج',
                      address: 'إسم المنتج',
                      number: 'الكميه من المنتج',
                      price: 'سعر المنتج',
                      priceA: 'إجمالي سعر المنتج',
                      onTap: (){
                        // Navigator.of(context).pushNamed(SuppliersData.id);
                      },
                      onTapEdite: (){
                        // Navigator.of(context).pushNamed(ModifySupplierData.id);
                      },
                    ),
                    widgetInkWell(
                      name: 'كود المنتج',
                      address: 'إسم المنتج',
                      number: 'الكميه من المنتج',
                      price: 'سعر المنتج',
                      priceA: 'إجمالي سعر المنتج',
                      onTap: (){
                        // Navigator.of(context).pushNamed(SuppliersData.id);
                      },
                      onTapEdite: (){
                        // Navigator.of(context).pushNamed(ModifySupplierData.id);
                      },
                    ),
                    const SizedBox(height: 20,),
                    const Text('إجمالي الفاتوره   750  ', style: TextStyle(fontSize: 20),),
                    // const Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child: ListTile(
                    //     title: Text('كود المنتج', style: TextStyle(color: Colors.black),),
                    //     // subtitle: Text(name ?? 'إسم المستخدم'),
                    //     // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                    //   ),
                    // ),
                    // const Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child: ListTile(
                    //     title: Text('إسم المنتج', style: TextStyle(color: Colors.black),),
                    //     // subtitle: Text(name ?? 'إسم المستخدم'),
                    //     // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                    //   ),
                    // ),
                    // const Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child: ListTile(
                    //     title: Text('الكميه من المنتج', style: TextStyle(color: Colors.black),),
                    //     // subtitle: Text(name ?? 'إسم المستخدم'),
                    //     // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                    //   ),
                    // ),
                    // const Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child: ListTile(
                    //     title: Text('سعر المنتج', style: TextStyle(color: Colors.black),),
                    //     // subtitle: Text(name ?? 'إسم المستخدم'),
                    //     // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                    //   ),
                    // ),
                    // const Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child: ListTile(
                    //     title: Text('إجمالي سعر المنتج', style: TextStyle(color: Colors.black),),
                    //     // subtitle: Text(name ?? 'إسم المستخدم'),
                    //     // subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                    //   ),
                    // ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: getColor(Colors.white, Colors.green)
                          ),
                          onPressed: (){
                            // Navigator.pushNamed(context, HomeManager.id);
                          },
                          child: const Text('طباعه', style: TextStyle(color: Colors.black),),
                        ),
                        // Builder(
                        //   // ignore: deprecated_member_use
                        //   builder: (context) => RaisedButton(
                        //     onPressed: ()
                        //     async {
                        //       if (formstate.currentState.validate())
                        //       {
                        //         formstate.currentState.save();
                        //         showLoading(context);
                        //        } else {}
                        //     },
                        //     child: const Text('عرض المنتج'),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ]
              ),
            ),

          ),
        ),
      ),
    );
  }

  widgetInkWell({name, address, number, onTap, onTapEdite, price, priceA}){
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
                          AutoSizeText(
                            price,
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
                            priceA,
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
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     InkWell(
                  //       onTap: onTapEdite,
                  //       child: const Icon(Icons.edit,),
                  //     ),
                  //
                  //   ],
                  // ),

                ],
              ),
              // ),
            ),
          ),
        ),
      ],
    );

  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
    getColor(Set<MaterialState> state){
      if(state.contains(MaterialState.pressed)){
        return colorPressed;
      } else {
        return color;
      }
    }
    return MaterialStateProperty.resolveWith(getColor);
  }

  showLoading(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
              title: Text('أنتظر قليلاً'),
              content: SizedBox(
                  height: 50,
                  child: Center(
                      child: CircularProgressIndicator()
                  )
              )
          );
        }
    );
  }
}
