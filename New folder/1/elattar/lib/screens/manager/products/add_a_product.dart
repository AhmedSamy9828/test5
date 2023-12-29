import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AddAProduct extends StatefulWidget {
  const AddAProduct({Key? key}) : super(key: key);
  static String id = 'AddAProduct';

  @override
  State<AddAProduct> createState() => _AddAProductState();
}

class _AddAProductState extends State<AddAProduct> {


  _Wasd(){
    select = product[0];
  }

  final product = ['XXL', 'XL', 'L'];
  String? select = '';

  @override
  void initState() {
    _Wasd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    DocumentSnapshot<Object?>? currentCategory;
    TextEditingController categoryController = new TextEditingController();
    String categoryname;

    // TextEditingController _date = TextEditingController();
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إضافه منتج',
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
                    SizedBox(
                      height: 210,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(Icons.add_photo_alternate_outlined,size: 20,color: Colors.red,),
                                      Text('1'),
                                    ],
                                  ),
                                  const SizedBox(height: 3),
                                  const CircleAvatar(
                                    // backgroundImage: picture1 == null ? null : FileImage(picture1),
                                    radius: 70,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      GestureDetector(
                                        // onTap: () async {
                                        //   if(formstate.currentState.validate()){
                                        //     formstate.currentState.save();
                                        //     var image = await ImagePicker().getImage(source: ImageSource.camera);
                                        //     if ( image != null )
                                        //     {
                                        //       picture1 = File(image.path);
                                        //       var nameImage = basename(image.path);
                                        //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                                        //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                                        //           .child(_category).child(_productBranch).child(_productName)
                                        //           .child('image1 ' ' - ' ' camera' + nameImage);
                                        //     }
                                        //     setState(() {
                                        //
                                        //     });
                                        //   } else {
                                        //     AwesomeDialog(
                                        //         context : this.context,
                                        //         title: 'حفظ الصوره',
                                        //         body: const Text('يرجي إكمال البيانات أولاً'),
                                        //         dialogType: DialogType.ERROR)
                                        //         .show();
                                        //   }
                                        // },
                                        child: const Icon(Icons.camera,size: 30,),
                                      ),
                                      const SizedBox(width: 20),
                                      GestureDetector(
                                        // onTap: () async {
                                        //   if(formstate.currentState.validate()){
                                        //     formstate.currentState.save();
                                        //     var image = await ImagePicker().getImage(source: ImageSource.gallery);
                                        //     if ( image != null )
                                        //     {
                                        //       picture1 = File(image.path);
                                        //       var nameImage = basename(image.path);
                                        //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                                        //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                                        //           .child(_category).child(_productBranch).child(_productName)
                                        //           .child('image1 ' ' - ' ' gallery' + nameImage);
                                        //     }
                                        //     setState(() {
                                        //
                                        //     });
                                        //   } else {
                                        //     AwesomeDialog(
                                        //         context : this.context,
                                        //         title: 'حفظ الصوره',
                                        //         body: const Text('يرجي إكمال البيانات أولاً'),
                                        //         dialogType: DialogType.ERROR)
                                        //         .show();
                                        //   }
                                        // },
                                        child: const Icon(Icons.photo_outlined,size: 30,),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(Icons.add_photo_alternate_outlined,size: 20,color: Colors.red,),
                                      Text('1'),
                                    ],
                                  ),
                                  const SizedBox(height: 3),
                                  const CircleAvatar(
                                    // backgroundImage: picture1 == null ? null : FileImage(picture1),
                                    radius: 70,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      GestureDetector(
                                        // onTap: () async {
                                        //   if(formstate.currentState.validate()){
                                        //     formstate.currentState.save();
                                        //     var image = await ImagePicker().getImage(source: ImageSource.camera);
                                        //     if ( image != null )
                                        //     {
                                        //       picture1 = File(image.path);
                                        //       var nameImage = basename(image.path);
                                        //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                                        //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                                        //           .child(_category).child(_productBranch).child(_productName)
                                        //           .child('image1 ' ' - ' ' camera' + nameImage);
                                        //     }
                                        //     setState(() {
                                        //
                                        //     });
                                        //   } else {
                                        //     AwesomeDialog(
                                        //         context : this.context,
                                        //         title: 'حفظ الصوره',
                                        //         body: const Text('يرجي إكمال البيانات أولاً'),
                                        //         dialogType: DialogType.ERROR)
                                        //         .show();
                                        //   }
                                        // },
                                        child: const Icon(Icons.camera,size: 30,),
                                      ),
                                      const SizedBox(width: 20),
                                      GestureDetector(
                                        // onTap: () async {
                                        //   if(formstate.currentState.validate()){
                                        //     formstate.currentState.save();
                                        //     var image = await ImagePicker().getImage(source: ImageSource.gallery);
                                        //     if ( image != null )
                                        //     {
                                        //       picture1 = File(image.path);
                                        //       var nameImage = basename(image.path);
                                        //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                                        //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                                        //           .child(_category).child(_productBranch).child(_productName)
                                        //           .child('image1 ' ' - ' ' gallery' + nameImage);
                                        //     }
                                        //     setState(() {
                                        //
                                        //     });
                                        //   } else {
                                        //     AwesomeDialog(
                                        //         context : this.context,
                                        //         title: 'حفظ الصوره',
                                        //         body: const Text('يرجي إكمال البيانات أولاً'),
                                        //         dialogType: DialogType.ERROR)
                                        //         .show();
                                        //   }
                                        // },
                                        child: const Icon(Icons.photo_outlined,size: 30,),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(Icons.add_photo_alternate_outlined,size: 20,color: Colors.red,),
                                      Text('1'),
                                    ],
                                  ),
                                  const SizedBox(height: 3),
                                  const CircleAvatar(
                                    // backgroundImage: picture1 == null ? null : FileImage(picture1),
                                    radius: 70,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      GestureDetector(
                                        // onTap: () async {
                                        //   if(formstate.currentState.validate()){
                                        //     formstate.currentState.save();
                                        //     var image = await ImagePicker().getImage(source: ImageSource.camera);
                                        //     if ( image != null )
                                        //     {
                                        //       picture1 = File(image.path);
                                        //       var nameImage = basename(image.path);
                                        //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                                        //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                                        //           .child(_category).child(_productBranch).child(_productName)
                                        //           .child('image1 ' ' - ' ' camera' + nameImage);
                                        //     }
                                        //     setState(() {
                                        //
                                        //     });
                                        //   } else {
                                        //     AwesomeDialog(
                                        //         context : this.context,
                                        //         title: 'حفظ الصوره',
                                        //         body: const Text('يرجي إكمال البيانات أولاً'),
                                        //         dialogType: DialogType.ERROR)
                                        //         .show();
                                        //   }
                                        // },
                                        child: const Icon(Icons.camera,size: 30,),
                                      ),
                                      const SizedBox(width: 20),
                                      GestureDetector(
                                        // onTap: () async {
                                        //   if(formstate.currentState.validate()){
                                        //     formstate.currentState.save();
                                        //     var image = await ImagePicker().getImage(source: ImageSource.gallery);
                                        //     if ( image != null )
                                        //     {
                                        //       picture1 = File(image.path);
                                        //       var nameImage = basename(image.path);
                                        //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                                        //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                                        //           .child(_category).child(_productBranch).child(_productName)
                                        //           .child('image1 ' ' - ' ' gallery' + nameImage);
                                        //     }
                                        //     setState(() {
                                        //
                                        //     });
                                        //   } else {
                                        //     AwesomeDialog(
                                        //         context : this.context,
                                        //         title: 'حفظ الصوره',
                                        //         body: const Text('يرجي إكمال البيانات أولاً'),
                                        //         dialogType: DialogType.ERROR)
                                        //         .show();
                                        //   }
                                        // },
                                        child: const Icon(Icons.photo_outlined,size: 30,),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 20,),
                    // const SizedBox(height: 50,),
                    // StreamBuilder<QuerySnapshot>(
                    //     stream: FirebaseFirestore.instance.collection('supplierName').snapshots(),
                    //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    //       if (snapshot.hasError)  {print(snapshot.error);}
                    //       if (snapshot.connectionState == ConnectionState.waiting) {return const Center(child: Text("Loading"));}
                    //       // if (!snapshot.hasData) {return Text('Loading...');}
                    //       // currentCategory = snapshot.data.documents[0];
                    //         return Container(
                    //           padding: const EdgeInsets.all(16.0),
                    //           decoration: BoxDecoration(
                    //             color: Colors.grey[200],
                    //             borderRadius: const BorderRadius.only(
                    //               topLeft: Radius.circular(4.0),
                    //               topRight: Radius.circular(4.0),
                    //             ),
                    //           ),
                    //           child: DropdownButtonHideUnderline(
                    //             child:
                    //              DropdownButtonFormField<DocumentSnapshot>(
                    //               // value: currentCategory,
                    //               value: currentCategory,
                    //               onChanged: ( newValue) {
                    //                 setState(() {
                    //                   currentCategory = newValue;
                    //                 });
                    //                 print(currentCategory!['supplierName']);
                    //               },
                    //               validator: (currentCategory) {
                    //                 if (currentCategory == null) {
                    //                   return 'Category Not Selected';
                    //                 }
                    //               },
                    //               onSaved: ( newValue) {
                    //                 setState(() {
                    //                   currentCategory = newValue;
                    //                 });
                    //                 // print(currentCategory.data);
                    //               },
                    //               hint: Text('Select Category'),
                    //               items: snapshot.data!.docs.map((DocumentSnapshot document) {
                    //                 return  DropdownMenuItem<DocumentSnapshot>(
                    //                     value: document,
                    //                     child: Container(
                    //                       decoration: BoxDecoration(
                    //                           borderRadius: BorderRadius.circular(5.0)),
                    //                       height: 100.0,
                    //                       padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
                    //                       //color: primaryColor,
                    //                       child: Text(
                    //                         document['supplierName'],
                    //                       ),
                    //                     ));
                    //               }).toList(),
                    //             ),
                    //           ),
                    //         );
                    //     }),
                    // const SizedBox(height: 50,),
                    // const SizedBox(height: 50,),
                    // const SizedBox(height: 50,),
                    StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance.collection('Suppliers').snapshots(),
                        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError)  {print(snapshot.error);}
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const Center(child: Text("Loading"));
                          }
                          // if (!snapshot.hasData) {return Text('Loading...');}
                          // currentCategory = snapshot.data.documents[0];
                          return Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:  BorderRadius.all(Radius.circular(8)
                                // topLeft: Radius.circular(6),
                                // topRight: Radius.circular(6),
                              ),
                            ),
                            child: DropdownButtonFormField(
                              // child: DropdownButtonFormField<DocumentSnapshot>(
                                // value: currentCategory,
                                value: select,
                                onChanged: (e) {
                                  setState(() {
                                    select = e as String;
                                  });
                                  // print(currentCategory!['supplierName']);
                                },
                                // validator: (currentCategory) {
                                //   if (currentCategory == null) {
                                //     return 'Category Not Selected';
                                //   }
                                // },
                                // onSaved: ( newValue) {
                                //   setState(() {
                                //     currentCategory = newValue;
                                //   });
                                //   // print(currentCategory.data);
                                // },
                                // hint: Text('Select Category'),
                                items: const [],
                                // snapshot.data![''].map(( e['']) {
                                //   return  DropdownMenuItem(
                                //       value: e['supplierName'],
                                //       child: Container(
                                //         decoration: BoxDecoration(
                                //           // color: Colors.red,
                                //             borderRadius: BorderRadius.circular(5.0)),
                                //         height: 50,
                                //         padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
                                //         //color: primaryColor,
                                //         child: Text('ghd',
                                //           // e['supplierName'],
                                //         ),
                                //       ));
                                // }).toList(),
                              // ),
                            ),
                          );
                        }),
                    const SizedBox(height: 50,),
                    // const SizedBox(height: 50,),
                    // const SizedBox(height: 50,),
                    const SizedBox(height: 20,),
                    DropdownButton(
                      value: select,
                        items: product.map(
                            (e) =>DropdownMenuItem(child: Text(e), value: e,)
                        ).toList(),
                        onChanged: (val) {
                        setState(() {
                          select = val ;
                        });
                        },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField<String>(
                          value: select,
                          items:
                          product
                          // _collectionRef.where('supplierName').get().then((value) {
                          //   value.docs.forEach((element) {
                          //     element.get('supplierName');
                          //   });
                          // })
                              .map<DropdownMenuItem<String>>((String value){
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          })
                          // DropdownMenuItem<String>(value: select,child: Text(select),))
                            .toList(),
                          onChanged: (value){
                            setState(() {
                              select = value;
                            });
                          },
                          // ignore: missing_return
                          validator: (value){
                            if(value == null){
                              // return _error();
                            }
                            return null;
                          },
                          onSaved: (value) {
                            select = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'إختيار المورد',
                            contentPadding: const EdgeInsets.all(10),
                            filled: true,
                            // fillColor: KXColor,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          value: select,
                          items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                          onChanged: (val){
                            setState(() {
                              select = val as String;
                            });
                          },
                          // ignore: missing_return
                          validator: (value){
                            if(value == null){
                              // return _error();
                            }
                            return null;
                          },
                          onSaved: (value) {
                            // _productBranch = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'إختيار الصندوق',
                            contentPadding: const EdgeInsets.all(10),
                            filled: true,
                            // fillColor: KXColor,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم المنتج';
                          }
                          return null;
                        },
                        onSaved: (value){
                          // _productName = value;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'كود المنتج',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم المنتج';
                          }
                          return null;
                        },
                        onSaved: (value){
                          // _productName = value;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'أسم المنتج',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم المنتج';
                          }
                          return null;
                        },
                        onSaved: (value){
                          // _productName = value;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'عدد الوحدات',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم المنتج';
                          }
                          return null;
                        },
                        onSaved: (value){
                          // _productName = value;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'سعر المنتج',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          value: select,
                          items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                          onChanged: (val){
                            setState(() {
                              select = val as String;
                            });
                          },
                          // ignore: missing_return
                          validator: (value){
                            if(value == null){
                              // return _error();
                            }
                            return null;
                          },
                          onSaved: (value) {
                            // _productBranch = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'المقاس',
                            contentPadding: const EdgeInsets.all(10),
                            filled: true,
                            // fillColor: KXColor,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          value: select,
                          items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                          onChanged: (val){
                            setState(() {
                              select = val as String;
                            });
                          },
                          // ignore: missing_return
                          validator: (value){
                            if(value == null){
                              // return _error();
                            }
                            return null;
                          },
                          onSaved: (value) {
                            // _productBranch = value;
                          },
                          decoration: InputDecoration(
                            labelText: 'اللون',
                            contentPadding: const EdgeInsets.all(10),
                            filled: true,
                            // fillColor: KXColor,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.white
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
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
                          child: const Text('إضافه المنتج', style: TextStyle(color: Colors.black),),
                        ),
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
