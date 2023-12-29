import 'package:flutter/material.dart';

class ModifySupplierData extends StatefulWidget {
  const ModifySupplierData({Key? key, required this.name, required this.address, required this.number}) : super(key: key);
  static String id = 'ModifySupplierData';

  final String name;
  final String address;
  final String number;
  // const ModifySupplierData({Key? key, required this.name}) : super(key: key);

  @override
  State<ModifySupplierData> createState() => _ModifySupplierDataState();
}

class _ModifySupplierDataState extends State<ModifySupplierData> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  late String name;
  late String address;
  late String number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تعديل بيانات المورد',
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
      body: Form(
        key: _globalKey,
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: ListView(
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(top: 5),
              //   child: SizedBox(
              //     height: MediaQuery.of(context).size.height * .2,
              //     child: const Image(
              //       image: AssetImage("assets/shop.png"),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    initialValue: widget.name,
                    keyboardType: TextInputType.name,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'من فضلك أدخل إسم';
                      }
                      if(value == name)
                      {
                        return 'من فضلك أدخل إسم جديد';
                      }
                      return null;
                    },
                    onSaved: (value){
                      name = value!;
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'الإسم',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    initialValue: widget.address,
                    keyboardType: TextInputType.name,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'من فضلك أدخل العنوان';
                      }
                      if(value == name)
                      {
                        return 'من فضلك أدخل عنوان جديد';
                      }
                      return null;
                    },
                    onSaved: (value){
                      address = value!;
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'العنوان',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    initialValue: widget.number,
                    keyboardType: TextInputType.name,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'من فضلك أدخل الرقم';
                      }
                      if(value == name)
                      {
                        return 'من فضلك أدخل رقم جديد';
                      }
                      return null;
                    },
                    onSaved: (value){
                      number = value!;
                    },
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'الرقم',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: getColor(Colors.white, Colors.red)
                      ),
                      onPressed: (){
                        // Navigator.pushNamed(context, HomeManager.id);
                      },
                      child: const Text('تعديل', style: TextStyle(color: Colors.black),),
                    ),
                  ]
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // ignore: deprecated_member_use
              //     OutlineButton(
              //       padding: const EdgeInsets.symmetric(horizontal: 55),
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //       onPressed: () {Navigator.of(context).pop();},
              //       child: const Text("إلغاء",
              //           style: TextStyle(
              //               fontSize: 14,
              //               letterSpacing: 2.2,
              //               color: Colors.black
              //           )
              //       ),
              //     ),
              //     // ignore: deprecated_member_use
              //     RaisedButton(
              //       onPressed: () async{
              //         if (_globalKey.currentState.validate())
              //         {
              //           _globalKey.currentState.save();
              //           showLoading(context);
              //           User user = FirebaseAuth.instance.currentUser;
              //           try{
              //             await FirebaseFirestore.instance.collection('UserShopper').doc('Egypt').collection('Egypt')
              //                 .doc(user.uid).update({
              //               'name' : name,
              //             });
              //             Navigator.of(context).pop();
              //             Navigator.of(context).pushNamedAndRemoveUntil(HomeShopper.id, (route) => false);
              //           }on  FirebaseException catch (e) {
              //             Navigator.of(context).pop();
              //             AwesomeDialog(
              //                 context : context,
              //                 title: 'الحاله',
              //                 body:  e.message != null ? Text(e.message)
              //                 // : e.code != null ? Text(e.code)
              //                     : const Text('حدث خطأ ما: بالرجاء المحاوله لاحقاً'),
              //                 dialogType: DialogType.WARNING)
              //                 .show();
              //           }catch (e){
              //             Navigator.of(context).pop();
              //             AwesomeDialog(
              //                 context : context,
              //                 title: 'الحاله',
              //                 body:  e.message != null ? Text(e.message)
              //                 // : e.code != null ? Text(e.code)
              //                     : const Text('حدث خطأ ما: بالرجاء المحاوله لاحقاً'),
              //                 dialogType: DialogType.WARNING)
              //                 .show();
              //           }
              //         } else {}
              //       },
              //       color: Colors.blue,
              //       padding: const EdgeInsets.symmetric(horizontal: 55),
              //       elevation: 4,
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //       child: const Text(
              //         "حفظ",
              //         style: TextStyle(
              //             fontSize: 14,
              //             letterSpacing: 2.2,
              //             color: Colors.white),
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
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
