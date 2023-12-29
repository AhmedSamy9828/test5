import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:intl/intl_browser.dart';

class ModifyBox extends StatefulWidget {
  const ModifyBox({Key? key}) : super(key: key);
  static String id = 'ModifyBox';

  @override
  State<ModifyBox> createState() => _ModifyBoxState();
}

class _ModifyBoxState extends State<ModifyBox> {
  final _product = ['small', 'large'];
  String? _select = 'small';
  final TextEditingController _date = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تعديل صندوق',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          value: _select,
                          items: _product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                          onChanged: (val){
                            setState(() {
                              _select = val as String;
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
                            labelText: 'إسم المورد',
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
                          // onChanged: dropChangeBranch,
                          // value: _productBranch,
                          // items: <String>[
                          //   'ملابس رياضية',
                          //   'هوديز وسويت شيرتات',
                          //   'جواكيت وبلاطي',
                          //   'تيشيرتات',
                          //   'توب',
                          //   'جينز',
                          //   'بنطلونات',
                          //   'شورتات',
                          //   'شرابات',
                          //   'بدل وبليزرات',
                          //   'بنطلونات ضيقة',
                          //   'الملابس الداخلية واللانجري',
                          //   'سالوبيتات & سالوبيتات بدون أكمام',
                          //   'مايوهات وكاش مايوه',
                          //   'فساتين',
                          //   'التنانير',
                          //   'بلوفرات و كارديجان',
                          //   'كيمونو',
                          // ].map<DropdownMenuItem<String>>((String value) {
                          //   return DropdownMenuItem<String>(
                          //     child: Text(value),
                          //     value: value,
                          //   );
                          // }).toList()
                        ),
                        // child: DropdownButtonFormField<String>(
                        //   // ignore: missing_return
                        //     validator: (value){
                        //       if(value == null){
                        //         // return _error();
                        //       }
                        //     },
                        //     onSaved: (value) {
                        //       // _productBranch = value;
                        //     },
                        //     decoration: InputDecoration(
                        //       labelText: 'فرع المنتج',
                        //       contentPadding: const EdgeInsets.all(10),
                        //       filled: true,
                        //       // fillColor: KXColor,
                        //       enabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //     ),
                        //     // onChanged: dropChangeBranch,
                        //     // value: _productBranch,
                        //     items: <String>[
                        //       'ملابس رياضية',
                        //       'هوديز وسويت شيرتات',
                        //       'جواكيت وبلاطي',
                        //       'تيشيرتات',
                        //       'توب',
                        //       'جينز',
                        //       'بنطلونات',
                        //       'شورتات',
                        //       'شرابات',
                        //       'بدل وبليزرات',
                        //       'بنطلونات ضيقة',
                        //       'الملابس الداخلية واللانجري',
                        //       'سالوبيتات & سالوبيتات بدون أكمام',
                        //       'مايوهات وكاش مايوه',
                        //       'فساتين',
                        //       'التنانير',
                        //       'بلوفرات و كارديجان',
                        //       'كيمونو',
                        //     ].map<DropdownMenuItem<String>>((String value) {
                        //       return DropdownMenuItem<String>(
                        //         child: Text(value),
                        //         value: value,
                        //       );
                        //     }).toList()
                        // ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          value: _select,
                          items: _product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                          onChanged: (val){
                            setState(() {
                              _select = val as String;
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
                            labelText: 'قسم الصندوق',
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
                          // onChanged: dropChangeBranch,
                          // value: _productBranch,
                          // items: <String>[
                          //   'ملابس رياضية',
                          //   'هوديز وسويت شيرتات',
                          //   'جواكيت وبلاطي',
                          //   'تيشيرتات',
                          //   'توب',
                          //   'جينز',
                          //   'بنطلونات',
                          //   'شورتات',
                          //   'شرابات',
                          //   'بدل وبليزرات',
                          //   'بنطلونات ضيقة',
                          //   'الملابس الداخلية واللانجري',
                          //   'سالوبيتات & سالوبيتات بدون أكمام',
                          //   'مايوهات وكاش مايوه',
                          //   'فساتين',
                          //   'التنانير',
                          //   'بلوفرات و كارديجان',
                          //   'كيمونو',
                          // ].map<DropdownMenuItem<String>>((String value) {
                          //   return DropdownMenuItem<String>(
                          //     child: Text(value),
                          //     value: value,
                          //   );
                          // }).toList()
                        ),
                        // child: DropdownButtonFormField<String>(
                        //   // ignore: missing_return
                        //     validator: (value){
                        //       if(value == null){
                        //         // return _error();
                        //       }
                        //     },
                        //     onSaved: (value) {
                        //       // _productBranch = value;
                        //     },
                        //     decoration: InputDecoration(
                        //       labelText: 'فرع المنتج',
                        //       contentPadding: const EdgeInsets.all(10),
                        //       filled: true,
                        //       // fillColor: KXColor,
                        //       enabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //     ),
                        //     // onChanged: dropChangeBranch,
                        //     // value: _productBranch,
                        //     items: <String>[
                        //       'ملابس رياضية',
                        //       'هوديز وسويت شيرتات',
                        //       'جواكيت وبلاطي',
                        //       'تيشيرتات',
                        //       'توب',
                        //       'جينز',
                        //       'بنطلونات',
                        //       'شورتات',
                        //       'شرابات',
                        //       'بدل وبليزرات',
                        //       'بنطلونات ضيقة',
                        //       'الملابس الداخلية واللانجري',
                        //       'سالوبيتات & سالوبيتات بدون أكمام',
                        //       'مايوهات وكاش مايوه',
                        //       'فساتين',
                        //       'التنانير',
                        //       'بلوفرات و كارديجان',
                        //       'كيمونو',
                        //     ].map<DropdownMenuItem<String>>((String value) {
                        //       return DropdownMenuItem<String>(
                        //         child: Text(value),
                        //         value: value,
                        //       );
                        //     }).toList()
                        // ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButtonFormField(
                          value: _select,
                          items: _product.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                          onChanged: (val){
                            setState(() {
                              _select = val as String;
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
                            labelText: 'فرع الصندوق',
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
                          // onChanged: dropChangeBranch,
                          // value: _productBranch,
                          // items: <String>[
                          //   'ملابس رياضية',
                          //   'هوديز وسويت شيرتات',
                          //   'جواكيت وبلاطي',
                          //   'تيشيرتات',
                          //   'توب',
                          //   'جينز',
                          //   'بنطلونات',
                          //   'شورتات',
                          //   'شرابات',
                          //   'بدل وبليزرات',
                          //   'بنطلونات ضيقة',
                          //   'الملابس الداخلية واللانجري',
                          //   'سالوبيتات & سالوبيتات بدون أكمام',
                          //   'مايوهات وكاش مايوه',
                          //   'فساتين',
                          //   'التنانير',
                          //   'بلوفرات و كارديجان',
                          //   'كيمونو',
                          // ].map<DropdownMenuItem<String>>((String value) {
                          //   return DropdownMenuItem<String>(
                          //     child: Text(value),
                          //     value: value,
                          //   );
                          // }).toList()
                        ),
                        // child: DropdownButtonFormField<String>(
                        //   // ignore: missing_return
                        //     validator: (value){
                        //       if(value == null){
                        //         // return _error();
                        //       }
                        //     },
                        //     onSaved: (value) {
                        //       // _productBranch = value;
                        //     },
                        //     decoration: InputDecoration(
                        //       labelText: 'فرع المنتج',
                        //       contentPadding: const EdgeInsets.all(10),
                        //       filled: true,
                        //       // fillColor: KXColor,
                        //       enabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20),
                        //           borderSide: const BorderSide(
                        //               color: Colors.white
                        //           )
                        //       ),
                        //     ),
                        //     // onChanged: dropChangeBranch,
                        //     // value: _productBranch,
                        //     items: <String>[
                        //       'ملابس رياضية',
                        //       'هوديز وسويت شيرتات',
                        //       'جواكيت وبلاطي',
                        //       'تيشيرتات',
                        //       'توب',
                        //       'جينز',
                        //       'بنطلونات',
                        //       'شورتات',
                        //       'شرابات',
                        //       'بدل وبليزرات',
                        //       'بنطلونات ضيقة',
                        //       'الملابس الداخلية واللانجري',
                        //       'سالوبيتات & سالوبيتات بدون أكمام',
                        //       'مايوهات وكاش مايوه',
                        //       'فساتين',
                        //       'التنانير',
                        //       'بلوفرات و كارديجان',
                        //       'كيمونو',
                        //     ].map<DropdownMenuItem<String>>((String value) {
                        //       return DropdownMenuItem<String>(
                        //         child: Text(value),
                        //         value: value,
                        //       );
                        //     }).toList()
                        // ),
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
                          labelText: 'كود الصندوق',
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
                          labelText: 'أسم الصندوق',
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
                          labelText: 'عدد المنتجات داخل الصندوق',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        controller: _date,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today_rounded,
                            textDirection: TextDirection.ltr,
                          ),
                          labelText: 'تاريخ الوصول',

                        ),

                        onTap: () async {
                          // String asd = D;
                          DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if( pickeddate != null ){
                            setState(() {
                              // _date.text = DateFormate('yyyy-MM-dd').formate(pickeddate);
                              // _date.text = DateTimeRange(pickeddate);
                              _date.text = pickeddate.toString();
                            });
                          }
                        },
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
                          child: const Text('حذف', style: TextStyle(color: Colors.black),),
                        ),
                        const SizedBox(width: 20,),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: getColor(Colors.white, Colors.red)
                          ),
                          onPressed: (){
                            // Navigator.pushNamed(context, HomeManager.id);
                          },
                          child: const Text('تعديل', style: TextStyle(color: Colors.black),),
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
