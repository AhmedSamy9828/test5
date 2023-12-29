import 'package:flutter/material.dart';

class AddClient extends StatefulWidget {
  const AddClient({Key? key}) : super(key: key);
  static String id = 'AddClient';

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  final product = ['small', 'large'];
  final productl = ['L', 'XL', 'XXL'];
  String? select = 'small';
  String? selectpro = 'XXL';
  // TextEditingController _date = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إضافه عميل',
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
        //       Navigator.of(context).pushNamed(Client.id);
        //     },
        //     icon: const Icon(
        //       Icons.accessibility,
        //       // size: 30,
        //     ),
        //   ),
        // ],
        // leading: IconButton(
        //   onPressed: () {
        //     // Navigator.of(context).pushNamed(AddSuppliers.id);
        //   },
        //   icon: const Icon(
        //     Icons.settings,
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
                    const Text('بيانات العميل', style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 20,),
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
                          labelText: 'إسم العميل',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
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
                          labelText: 'عنوان العميل',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
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
                          labelText: 'رقم العميل',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    // Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child:TextFormField(
                    //     keyboardType: TextInputType.name,
                    //     validator: (value)
                    //     {
                    //       if(value!.isEmpty)
                    //       {
                    //         return 'أدخل أسم المنتج';
                    //       }
                    //       return null;
                    //     },
                    //     onSaved: (value){
                    //       // _productName = value;
                    //     },
                    //     decoration: const InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       labelText: 'تاريخ الطلبيه',
                    //       prefixIcon: Icon(Icons.note),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 20,),
                    const SizedBox(height: 20,),
                    // const Divider(thickness: 2,color: Colors.lightBlueAccent,),
                    // SizedBox(
                    //   height: 210,
                    //   child: ListView(
                    //       scrollDirection: Axis.horizontal,
                    //       children: <Widget>[
                    //         Padding(
                    //           padding: const EdgeInsets.all(5),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: <Widget>[
                    //               Row(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: const <Widget>[
                    //                   Icon(Icons.add_photo_alternate_outlined,size: 20,color: Colors.red,),
                    //                   Text('1'),
                    //                 ],
                    //               ),
                    //               const SizedBox(height: 3),
                    //               const CircleAvatar(
                    //                 // backgroundImage: picture1 == null ? null : FileImage(picture1),
                    //                 radius: 70,
                    //               ),
                    //               // Row(
                    //               //   children: <Widget>[
                    //               //     GestureDetector(
                    //               //       // onTap: () async {
                    //               //       //   if(formstate.currentState.validate()){
                    //               //       //     formstate.currentState.save();
                    //               //       //     var image = await ImagePicker().getImage(source: ImageSource.camera);
                    //               //       //     if ( image != null )
                    //               //       //     {
                    //               //       //       picture1 = File(image.path);
                    //               //       //       var nameImage = basename(image.path);
                    //               //       //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                    //               //       //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                    //               //       //           .child(_category).child(_productBranch).child(_productName)
                    //               //       //           .child('image1 ' ' - ' ' camera' + nameImage);
                    //               //       //     }
                    //               //       //     setState(() {
                    //               //       //
                    //               //       //     });
                    //               //       //   } else {
                    //               //       //     AwesomeDialog(
                    //               //       //         context : this.context,
                    //               //       //         title: 'حفظ الصوره',
                    //               //       //         body: const Text('يرجي إكمال البيانات أولاً'),
                    //               //       //         dialogType: DialogType.ERROR)
                    //               //       //         .show();
                    //               //       //   }
                    //               //       // },
                    //               //       child: const Icon(Icons.camera,size: 30,),
                    //               //     ),
                    //               //     const SizedBox(width: 20),
                    //               //     GestureDetector(
                    //               //       // onTap: () async {
                    //               //       //   if(formstate.currentState.validate()){
                    //               //       //     formstate.currentState.save();
                    //               //       //     var image = await ImagePicker().getImage(source: ImageSource.gallery);
                    //               //       //     if ( image != null )
                    //               //       //     {
                    //               //       //       picture1 = File(image.path);
                    //               //       //       var nameImage = basename(image.path);
                    //               //       //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                    //               //       //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                    //               //       //           .child(_category).child(_productBranch).child(_productName)
                    //               //       //           .child('image1 ' ' - ' ' gallery' + nameImage);
                    //               //       //     }
                    //               //       //     setState(() {
                    //               //       //
                    //               //       //     });
                    //               //       //   } else {
                    //               //       //     AwesomeDialog(
                    //               //       //         context : this.context,
                    //               //       //         title: 'حفظ الصوره',
                    //               //       //         body: const Text('يرجي إكمال البيانات أولاً'),
                    //               //       //         dialogType: DialogType.ERROR)
                    //               //       //         .show();
                    //               //       //   }
                    //               //       // },
                    //               //       child: const Icon(Icons.photo_outlined,size: 30,),),
                    //               //   ],
                    //               // ),
                    //             ],
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.all(5),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: <Widget>[
                    //               Row(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: const <Widget>[
                    //                   Icon(Icons.add_photo_alternate_outlined,size: 20,color: Colors.red,),
                    //                   Text('1'),
                    //                 ],
                    //               ),
                    //               const SizedBox(height: 3),
                    //               const CircleAvatar(
                    //                 // backgroundImage: picture1 == null ? null : FileImage(picture1),
                    //                 radius: 70,
                    //               ),
                    //               // Row(
                    //               //   children: <Widget>[
                    //               //     GestureDetector(
                    //               //       // onTap: () async {
                    //               //       //   if(formstate.currentState.validate()){
                    //               //       //     formstate.currentState.save();
                    //               //       //     var image = await ImagePicker().getImage(source: ImageSource.camera);
                    //               //       //     if ( image != null )
                    //               //       //     {
                    //               //       //       picture1 = File(image.path);
                    //               //       //       var nameImage = basename(image.path);
                    //               //       //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                    //               //       //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                    //               //       //           .child(_category).child(_productBranch).child(_productName)
                    //               //       //           .child('image1 ' ' - ' ' camera' + nameImage);
                    //               //       //     }
                    //               //       //     setState(() {
                    //               //       //
                    //               //       //     });
                    //               //       //   } else {
                    //               //       //     AwesomeDialog(
                    //               //       //         context : this.context,
                    //               //       //         title: 'حفظ الصوره',
                    //               //       //         body: const Text('يرجي إكمال البيانات أولاً'),
                    //               //       //         dialogType: DialogType.ERROR)
                    //               //       //         .show();
                    //               //       //   }
                    //               //       // },
                    //               //       child: const Icon(Icons.camera,size: 30,),
                    //               //     ),
                    //               //     const SizedBox(width: 20),
                    //               //     GestureDetector(
                    //               //       // onTap: () async {
                    //               //       //   if(formstate.currentState.validate()){
                    //               //       //     formstate.currentState.save();
                    //               //       //     var image = await ImagePicker().getImage(source: ImageSource.gallery);
                    //               //       //     if ( image != null )
                    //               //       //     {
                    //               //       //       picture1 = File(image.path);
                    //               //       //       var nameImage = basename(image.path);
                    //               //       //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                    //               //       //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                    //               //       //           .child(_category).child(_productBranch).child(_productName)
                    //               //       //           .child('image1 ' ' - ' ' gallery' + nameImage);
                    //               //       //     }
                    //               //       //     setState(() {
                    //               //       //
                    //               //       //     });
                    //               //       //   } else {
                    //               //       //     AwesomeDialog(
                    //               //       //         context : this.context,
                    //               //       //         title: 'حفظ الصوره',
                    //               //       //         body: const Text('يرجي إكمال البيانات أولاً'),
                    //               //       //         dialogType: DialogType.ERROR)
                    //               //       //         .show();
                    //               //       //   }
                    //               //       // },
                    //               //       child: const Icon(Icons.photo_outlined,size: 30,),),
                    //               //   ],
                    //               // ),
                    //             ],
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.all(5),
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: <Widget>[
                    //               Row(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: const <Widget>[
                    //                   Icon(Icons.add_photo_alternate_outlined,size: 20,color: Colors.red,),
                    //                   Text('1'),
                    //                 ],
                    //               ),
                    //               const SizedBox(height: 3),
                    //               const CircleAvatar(
                    //                 // backgroundImage: picture1 == null ? null : FileImage(picture1),
                    //                 radius: 70,
                    //               ),
                    //               // Row(
                    //               //   children: <Widget>[
                    //               //     GestureDetector(
                    //               //       // onTap: () async {
                    //               //       //   if(formstate.currentState.validate()){
                    //               //       //     formstate.currentState.save();
                    //               //       //     var image = await ImagePicker().getImage(source: ImageSource.camera);
                    //               //       //     if ( image != null )
                    //               //       //     {
                    //               //       //       picture1 = File(image.path);
                    //               //       //       var nameImage = basename(image.path);
                    //               //       //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                    //               //       //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                    //               //       //           .child(_category).child(_productBranch).child(_productName)
                    //               //       //           .child('image1 ' ' - ' ' camera' + nameImage);
                    //               //       //     }
                    //               //       //     setState(() {
                    //               //       //
                    //               //       //     });
                    //               //       //   } else {
                    //               //       //     AwesomeDialog(
                    //               //       //         context : this.context,
                    //               //       //         title: 'حفظ الصوره',
                    //               //       //         body: const Text('يرجي إكمال البيانات أولاً'),
                    //               //       //         dialogType: DialogType.ERROR)
                    //               //       //         .show();
                    //               //       //   }
                    //               //       // },
                    //               //       child: const Icon(Icons.camera,size: 30,),
                    //               //     ),
                    //               //     const SizedBox(width: 20),
                    //               //     GestureDetector(
                    //               //       // onTap: () async {
                    //               //       //   if(formstate.currentState.validate()){
                    //               //       //     formstate.currentState.save();
                    //               //       //     var image = await ImagePicker().getImage(source: ImageSource.gallery);
                    //               //       //     if ( image != null )
                    //               //       //     {
                    //               //       //       picture1 = File(image.path);
                    //               //       //       var nameImage = basename(image.path);
                    //               //       //       refPicture1 = FirebaseStorage.instance.ref('Products').child('Egypt')
                    //               //       //           .child('Fashion').child(_governorate).child(_center).child(_nickName)
                    //               //       //           .child(_category).child(_productBranch).child(_productName)
                    //               //       //           .child('image1 ' ' - ' ' gallery' + nameImage);
                    //               //       //     }
                    //               //       //     setState(() {
                    //               //       //
                    //               //       //     });
                    //               //       //   } else {
                    //               //       //     AwesomeDialog(
                    //               //       //         context : this.context,
                    //               //       //         title: 'حفظ الصوره',
                    //               //       //         body: const Text('يرجي إكمال البيانات أولاً'),
                    //               //       //         dialogType: DialogType.ERROR)
                    //               //       //         .show();
                    //               //       //   }
                    //               //       // },
                    //               //       child: const Icon(Icons.photo_outlined,size: 30,),),
                    //               //   ],
                    //               // ),
                    //             ],
                    //           ),
                    //         ),
                    //       ]
                    //   ),
                    // ),
                    // const SizedBox(height: 20,),
                    // const Text('يبانات المنتج', style: TextStyle(fontSize: 20),),
                    // const SizedBox(height: 20,),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 30),
                    //   child: Directionality(
                    //     textDirection: TextDirection.rtl,
                    //     child: DropdownButtonFormField(
                    //       value: select,
                    //       items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                    //       onChanged: (val){
                    //         setState(() {
                    //           select = val as String;
                    //         });
                    //       },
                    //       // ignore: missing_return
                    //       validator: (value){
                    //         if(value == null){
                    //           // return _error();
                    //         }
                    //         return null;
                    //       },
                    //       onSaved: (value) {
                    //         // _productBranch = value;
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'إختيار الصندوق',
                    //         contentPadding: const EdgeInsets.all(10),
                    //         filled: true,
                    //         // fillColor: KXColor,
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //       ),
                    //       // onChanged: dropChangeBranch,
                    //       // value: _productBranch,
                    //       // items: <String>[
                    //       //   'ملابس رياضية',
                    //       //   'هوديز وسويت شيرتات',
                    //       //   'جواكيت وبلاطي',
                    //       //   'تيشيرتات',
                    //       //   'توب',
                    //       //   'جينز',
                    //       //   'بنطلونات',
                    //       //   'شورتات',
                    //       //   'شرابات',
                    //       //   'بدل وبليزرات',
                    //       //   'بنطلونات ضيقة',
                    //       //   'الملابس الداخلية واللانجري',
                    //       //   'سالوبيتات & سالوبيتات بدون أكمام',
                    //       //   'مايوهات وكاش مايوه',
                    //       //   'فساتين',
                    //       //   'التنانير',
                    //       //   'بلوفرات و كارديجان',
                    //       //   'كيمونو',
                    //       // ].map<DropdownMenuItem<String>>((String value) {
                    //       //   return DropdownMenuItem<String>(
                    //       //     child: Text(value),
                    //       //     value: value,
                    //       //   );
                    //       // }).toList()
                    //     ),
                    //     // child: DropdownButtonFormField<String>(
                    //     //   // ignore: missing_return
                    //     //     validator: (value){
                    //     //       if(value == null){
                    //     //         // return _error();
                    //     //       }
                    //     //     },
                    //     //     onSaved: (value) {
                    //     //       // _productBranch = value;
                    //     //     },
                    //     //     decoration: InputDecoration(
                    //     //       labelText: 'فرع المنتج',
                    //     //       contentPadding: const EdgeInsets.all(10),
                    //     //       filled: true,
                    //     //       // fillColor: KXColor,
                    //     //       enabledBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       focusedBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       border: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //     ),
                    //     //     // onChanged: dropChangeBranch,
                    //     //     // value: _productBranch,
                    //     //     items: <String>[
                    //     //       'ملابس رياضية',
                    //     //       'هوديز وسويت شيرتات',
                    //     //       'جواكيت وبلاطي',
                    //     //       'تيشيرتات',
                    //     //       'توب',
                    //     //       'جينز',
                    //     //       'بنطلونات',
                    //     //       'شورتات',
                    //     //       'شرابات',
                    //     //       'بدل وبليزرات',
                    //     //       'بنطلونات ضيقة',
                    //     //       'الملابس الداخلية واللانجري',
                    //     //       'سالوبيتات & سالوبيتات بدون أكمام',
                    //     //       'مايوهات وكاش مايوه',
                    //     //       'فساتين',
                    //     //       'التنانير',
                    //     //       'بلوفرات و كارديجان',
                    //     //       'كيمونو',
                    //     //     ].map<DropdownMenuItem<String>>((String value) {
                    //     //       return DropdownMenuItem<String>(
                    //     //         child: Text(value),
                    //     //         value: value,
                    //     //       );
                    //     //     }).toList()
                    //     // ),
                    //   ),
                    // ),
                    // const SizedBox(height: 20,),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 30),
                    //   child: Directionality(
                    //     textDirection: TextDirection.rtl,
                    //     child: DropdownButtonFormField(
                    //       value: select,
                    //       items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                    //       onChanged: (val){
                    //         setState(() {
                    //           select = val as String;
                    //         });
                    //       },
                    //       // ignore: missing_return
                    //       validator: (value){
                    //         if(value == null){
                    //           // return _error();
                    //         }
                    //         return null;
                    //       },
                    //       onSaved: (value) {
                    //         // _productBranch = value;
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'إختيار كود المنتج',
                    //         contentPadding: const EdgeInsets.all(10),
                    //         filled: true,
                    //         // fillColor: KXColor,
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //       ),
                    //       // onChanged: dropChangeBranch,
                    //       // value: _productBranch,
                    //       // items: <String>[
                    //       //   'ملابس رياضية',
                    //       //   'هوديز وسويت شيرتات',
                    //       //   'جواكيت وبلاطي',
                    //       //   'تيشيرتات',
                    //       //   'توب',
                    //       //   'جينز',
                    //       //   'بنطلونات',
                    //       //   'شورتات',
                    //       //   'شرابات',
                    //       //   'بدل وبليزرات',
                    //       //   'بنطلونات ضيقة',
                    //       //   'الملابس الداخلية واللانجري',
                    //       //   'سالوبيتات & سالوبيتات بدون أكمام',
                    //       //   'مايوهات وكاش مايوه',
                    //       //   'فساتين',
                    //       //   'التنانير',
                    //       //   'بلوفرات و كارديجان',
                    //       //   'كيمونو',
                    //       // ].map<DropdownMenuItem<String>>((String value) {
                    //       //   return DropdownMenuItem<String>(
                    //       //     child: Text(value),
                    //       //     value: value,
                    //       //   );
                    //       // }).toList()
                    //     ),
                    //     // child: DropdownButtonFormField<String>(
                    //     //   // ignore: missing_return
                    //     //     validator: (value){
                    //     //       if(value == null){
                    //     //         // return _error();
                    //     //       }
                    //     //     },
                    //     //     onSaved: (value) {
                    //     //       // _productBranch = value;
                    //     //     },
                    //     //     decoration: InputDecoration(
                    //     //       labelText: 'فرع المنتج',
                    //     //       contentPadding: const EdgeInsets.all(10),
                    //     //       filled: true,
                    //     //       // fillColor: KXColor,
                    //     //       enabledBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       focusedBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       border: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //     ),
                    //     //     // onChanged: dropChangeBranch,
                    //     //     // value: _productBranch,
                    //     //     items: <String>[
                    //     //       'ملابس رياضية',
                    //     //       'هوديز وسويت شيرتات',
                    //     //       'جواكيت وبلاطي',
                    //     //       'تيشيرتات',
                    //     //       'توب',
                    //     //       'جينز',
                    //     //       'بنطلونات',
                    //     //       'شورتات',
                    //     //       'شرابات',
                    //     //       'بدل وبليزرات',
                    //     //       'بنطلونات ضيقة',
                    //     //       'الملابس الداخلية واللانجري',
                    //     //       'سالوبيتات & سالوبيتات بدون أكمام',
                    //     //       'مايوهات وكاش مايوه',
                    //     //       'فساتين',
                    //     //       'التنانير',
                    //     //       'بلوفرات و كارديجان',
                    //     //       'كيمونو',
                    //     //     ].map<DropdownMenuItem<String>>((String value) {
                    //     //       return DropdownMenuItem<String>(
                    //     //         child: Text(value),
                    //     //         value: value,
                    //     //       );
                    //     //     }).toList()
                    //     // ),
                    //   ),
                    // ),
                    // const SizedBox(height: 20,),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 30),
                    //   child: Directionality(
                    //     textDirection: TextDirection.rtl,
                    //     child: DropdownButtonFormField(
                    //       value: select,
                    //       items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                    //       onChanged: (val){
                    //         setState(() {
                    //           select = val as String;
                    //         });
                    //       },
                    //       // ignore: missing_return
                    //       validator: (value){
                    //         if(value == null){
                    //           // return _error();
                    //         }
                    //         return null;
                    //       },
                    //       onSaved: (value) {
                    //         // _productBranch = value;
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'إختيار إسم المنتج',
                    //         contentPadding: const EdgeInsets.all(10),
                    //         filled: true,
                    //         // fillColor: KXColor,
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //       ),
                    //       // onChanged: dropChangeBranch,
                    //       // value: _productBranch,
                    //       // items: <String>[
                    //       //   'ملابس رياضية',
                    //       //   'هوديز وسويت شيرتات',
                    //       //   'جواكيت وبلاطي',
                    //       //   'تيشيرتات',
                    //       //   'توب',
                    //       //   'جينز',
                    //       //   'بنطلونات',
                    //       //   'شورتات',
                    //       //   'شرابات',
                    //       //   'بدل وبليزرات',
                    //       //   'بنطلونات ضيقة',
                    //       //   'الملابس الداخلية واللانجري',
                    //       //   'سالوبيتات & سالوبيتات بدون أكمام',
                    //       //   'مايوهات وكاش مايوه',
                    //       //   'فساتين',
                    //       //   'التنانير',
                    //       //   'بلوفرات و كارديجان',
                    //       //   'كيمونو',
                    //       // ].map<DropdownMenuItem<String>>((String value) {
                    //       //   return DropdownMenuItem<String>(
                    //       //     child: Text(value),
                    //       //     value: value,
                    //       //   );
                    //       // }).toList()
                    //     ),
                    //     // child: DropdownButtonFormField<String>(
                    //     //   // ignore: missing_return
                    //     //     validator: (value){
                    //     //       if(value == null){
                    //     //         // return _error();
                    //     //       }
                    //     //     },
                    //     //     onSaved: (value) {
                    //     //       // _productBranch = value;
                    //     //     },
                    //     //     decoration: InputDecoration(
                    //     //       labelText: 'فرع المنتج',
                    //     //       contentPadding: const EdgeInsets.all(10),
                    //     //       filled: true,
                    //     //       // fillColor: KXColor,
                    //     //       enabledBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       focusedBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       border: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //     ),
                    //     //     // onChanged: dropChangeBranch,
                    //     //     // value: _productBranch,
                    //     //     items: <String>[
                    //     //       'ملابس رياضية',
                    //     //       'هوديز وسويت شيرتات',
                    //     //       'جواكيت وبلاطي',
                    //     //       'تيشيرتات',
                    //     //       'توب',
                    //     //       'جينز',
                    //     //       'بنطلونات',
                    //     //       'شورتات',
                    //     //       'شرابات',
                    //     //       'بدل وبليزرات',
                    //     //       'بنطلونات ضيقة',
                    //     //       'الملابس الداخلية واللانجري',
                    //     //       'سالوبيتات & سالوبيتات بدون أكمام',
                    //     //       'مايوهات وكاش مايوه',
                    //     //       'فساتين',
                    //     //       'التنانير',
                    //     //       'بلوفرات و كارديجان',
                    //     //       'كيمونو',
                    //     //     ].map<DropdownMenuItem<String>>((String value) {
                    //     //       return DropdownMenuItem<String>(
                    //     //         child: Text(value),
                    //     //         value: value,
                    //     //       );
                    //     //     }).toList()
                    //     // ),
                    //   ),
                    // ),
                    // const SizedBox(height: 10),
                    // Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child:TextFormField(
                    //     keyboardType: TextInputType.name,
                    //     validator: (value)
                    //     {
                    //       if(value!.isEmpty)
                    //       {
                    //         return 'أدخل أسم المنتج';
                    //       }
                    //       return null;
                    //     },
                    //     onSaved: (value){
                    //       // _productName = value;
                    //     },
                    //     decoration: const InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       labelText: 'عدد الوحدات',
                    //       prefixIcon: Icon(Icons.note),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 10),
                    // const Text('سعر المنتج'),
                    // const Text('سعر المنتج'),
                    // const Text('اللون المنتج'),
                    // const Text('مقاس المنتج'),
                    // Directionality(
                    //   textDirection: TextDirection.rtl,
                    //   child:TextFormField(
                    //     keyboardType: TextInputType.name,
                    //     validator: (value)
                    //     {
                    //       if(value!.isEmpty)
                    //       {
                    //         return 'أدخل أسم المنتج';
                    //       }
                    //       return null;
                    //     },
                    //     onSaved: (value){
                    //       // _productName = value;
                    //     },
                    //     decoration: const InputDecoration(
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       labelText: 'سعر المنتج',
                    //       prefixIcon: Icon(Icons.note),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 20,),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 30),
                    //   child: Directionality(
                    //     textDirection: TextDirection.rtl,
                    //     child: DropdownButtonFormField(
                    //       value: selectpro,
                    //       items: productl.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                    //       onChanged: (val){
                    //         setState(() {
                    //           selectpro = val as String;
                    //         });
                    //       },
                    //       // ignore: missing_return
                    //       validator: (value){
                    //         if(value == null){
                    //           // return _error();
                    //         }
                    //         return null;
                    //       },
                    //       onSaved: (value) {
                    //         // _productBranch = value;
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'المقاس',
                    //         contentPadding: const EdgeInsets.all(10),
                    //         filled: true,
                    //         // fillColor: KXColor,
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //       ),
                    //       // onChanged: dropChangeBranch,
                    //       // value: _productBranch,
                    //       // items: <String>[
                    //       //   'ملابس رياضية',
                    //       //   'هوديز وسويت شيرتات',
                    //       //   'جواكيت وبلاطي',
                    //       //   'تيشيرتات',
                    //       //   'توب',
                    //       //   'جينز',
                    //       //   'بنطلونات',
                    //       //   'شورتات',
                    //       //   'شرابات',
                    //       //   'بدل وبليزرات',
                    //       //   'بنطلونات ضيقة',
                    //       //   'الملابس الداخلية واللانجري',
                    //       //   'سالوبيتات & سالوبيتات بدون أكمام',
                    //       //   'مايوهات وكاش مايوه',
                    //       //   'فساتين',
                    //       //   'التنانير',
                    //       //   'بلوفرات و كارديجان',
                    //       //   'كيمونو',
                    //       // ].map<DropdownMenuItem<String>>((String value) {
                    //       //   return DropdownMenuItem<String>(
                    //       //     child: Text(value),
                    //       //     value: value,
                    //       //   );
                    //       // }).toList()
                    //     ),
                    //     // child: DropdownButtonFormField<String>(
                    //     //   // ignore: missing_return
                    //     //     validator: (value){
                    //     //       if(value == null){
                    //     //         // return _error();
                    //     //       }
                    //     //     },
                    //     //     onSaved: (value) {
                    //     //       // _productBranch = value;
                    //     //     },
                    //     //     decoration: InputDecoration(
                    //     //       labelText: 'فرع المنتج',
                    //     //       contentPadding: const EdgeInsets.all(10),
                    //     //       filled: true,
                    //     //       // fillColor: KXColor,
                    //     //       enabledBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       focusedBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       border: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //     ),
                    //     //     // onChanged: dropChangeBranch,
                    //     //     // value: _productBranch,
                    //     //     items: <String>[
                    //     //       'ملابس رياضية',
                    //     //       'هوديز وسويت شيرتات',
                    //     //       'جواكيت وبلاطي',
                    //     //       'تيشيرتات',
                    //     //       'توب',
                    //     //       'جينز',
                    //     //       'بنطلونات',
                    //     //       'شورتات',
                    //     //       'شرابات',
                    //     //       'بدل وبليزرات',
                    //     //       'بنطلونات ضيقة',
                    //     //       'الملابس الداخلية واللانجري',
                    //     //       'سالوبيتات & سالوبيتات بدون أكمام',
                    //     //       'مايوهات وكاش مايوه',
                    //     //       'فساتين',
                    //     //       'التنانير',
                    //     //       'بلوفرات و كارديجان',
                    //     //       'كيمونو',
                    //     //     ].map<DropdownMenuItem<String>>((String value) {
                    //     //       return DropdownMenuItem<String>(
                    //     //         child: Text(value),
                    //     //         value: value,
                    //     //       );
                    //     //     }).toList()
                    //     // ),
                    //   ),
                    // ),
                    // const SizedBox(height: 20,),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 30),
                    //   child: Directionality(
                    //     textDirection: TextDirection.rtl,
                    //     child: DropdownButtonFormField(
                    //       value: select,
                    //       items: product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                    //       onChanged: (val){
                    //         setState(() {
                    //           select = val as String;
                    //         });
                    //       },
                    //       // ignore: missing_return
                    //       validator: (value){
                    //         if(value == null){
                    //           // return _error();
                    //         }
                    //         return null;
                    //       },
                    //       onSaved: (value) {
                    //         // _productBranch = value;
                    //       },
                    //       decoration: InputDecoration(
                    //         labelText: 'اللون',
                    //         contentPadding: const EdgeInsets.all(10),
                    //         filled: true,
                    //         // fillColor: KXColor,
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white
                    //             )
                    //         ),
                    //       ),
                    //       // onChanged: dropChangeBranch,
                    //       // value: _productBranch,
                    //       // items: <String>[
                    //       //   'ملابس رياضية',
                    //       //   'هوديز وسويت شيرتات',
                    //       //   'جواكيت وبلاطي',
                    //       //   'تيشيرتات',
                    //       //   'توب',
                    //       //   'جينز',
                    //       //   'بنطلونات',
                    //       //   'شورتات',
                    //       //   'شرابات',
                    //       //   'بدل وبليزرات',
                    //       //   'بنطلونات ضيقة',
                    //       //   'الملابس الداخلية واللانجري',
                    //       //   'سالوبيتات & سالوبيتات بدون أكمام',
                    //       //   'مايوهات وكاش مايوه',
                    //       //   'فساتين',
                    //       //   'التنانير',
                    //       //   'بلوفرات و كارديجان',
                    //       //   'كيمونو',
                    //       // ].map<DropdownMenuItem<String>>((String value) {
                    //       //   return DropdownMenuItem<String>(
                    //       //     child: Text(value),
                    //       //     value: value,
                    //       //   );
                    //       // }).toList()
                    //     ),
                    //     // child: DropdownButtonFormField<String>(
                    //     //   // ignore: missing_return
                    //     //     validator: (value){
                    //     //       if(value == null){
                    //     //         // return _error();
                    //     //       }
                    //     //     },
                    //     //     onSaved: (value) {
                    //     //       // _productBranch = value;
                    //     //     },
                    //     //     decoration: InputDecoration(
                    //     //       labelText: 'فرع المنتج',
                    //     //       contentPadding: const EdgeInsets.all(10),
                    //     //       filled: true,
                    //     //       // fillColor: KXColor,
                    //     //       enabledBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       focusedBorder: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //       border: OutlineInputBorder(
                    //     //           borderRadius: BorderRadius.circular(20),
                    //     //           borderSide: const BorderSide(
                    //     //               color: Colors.white
                    //     //           )
                    //     //       ),
                    //     //     ),
                    //     //     // onChanged: dropChangeBranch,
                    //     //     // value: _productBranch,
                    //     //     items: <String>[
                    //     //       'ملابس رياضية',
                    //     //       'هوديز وسويت شيرتات',
                    //     //       'جواكيت وبلاطي',
                    //     //       'تيشيرتات',
                    //     //       'توب',
                    //     //       'جينز',
                    //     //       'بنطلونات',
                    //     //       'شورتات',
                    //     //       'شرابات',
                    //     //       'بدل وبليزرات',
                    //     //       'بنطلونات ضيقة',
                    //     //       'الملابس الداخلية واللانجري',
                    //     //       'سالوبيتات & سالوبيتات بدون أكمام',
                    //     //       'مايوهات وكاش مايوه',
                    //     //       'فساتين',
                    //     //       'التنانير',
                    //     //       'بلوفرات و كارديجان',
                    //     //       'كيمونو',
                    //     //     ].map<DropdownMenuItem<String>>((String value) {
                    //     //       return DropdownMenuItem<String>(
                    //     //         child: Text(value),
                    //     //         value: value,
                    //     //       );
                    //     //     }).toList()
                    //     // ),
                    //   ),
                    // ),
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
                          child: const Text('تسجيل العميل', style: TextStyle(color: Colors.black),),
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
