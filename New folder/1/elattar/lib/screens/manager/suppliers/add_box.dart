import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class AddBox extends StatefulWidget {
  const AddBox({Key? key,required this.supplierName,required this.suppliersId,}) : super(key: key);
  final String supplierName;
  final String suppliersId;
  static String id = 'AddBox';

  @override
  State<AddBox> createState() => _AddBoxState();
}

class _AddBoxState extends State<AddBox> {

  final CollectionReference _collectionRef = FirebaseFirestore.instance.collection('Suppliers');

  var product;
  Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    await _collectionRef.where('supplierName').get().then((value) {
      value.docs.forEach((element) {
        // print(element.get('supplierName'));
        setState(() {
          product = element.get('supplierName');
        });
      });
    });
    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    // print(allData);
  }



  late String groupCode;
  late String groupName;
  late String groupSection;
  late String groupBrunch;
  late int numberOfProducts;
  late String dateOfArrivalGroup;
  final TextEditingController _date = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إضافه صنف',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 5,
        automaticallyImplyLeading: false,
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
                    Text(widget.supplierName, style: const TextStyle(fontSize: 25),),
                    const SizedBox(height: 20,),
                    Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل كود الصنف';
                          }
                          return null;
                        },
                        onSaved: (value){
                          groupCode = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'الكود',
                          labelText: 'كود الصنف',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم الصنف';
                          }
                          return null;
                        },
                        onSaved: (value){
                          groupName = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'الإسم',
                          labelText: 'إسم الصنف',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم القسم';
                          }
                          return null;
                        },
                        onSaved: (value){
                          groupSection = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'القسم',
                          labelText: 'قسم الصنف',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم الفرع';
                          }
                          return null;
                        },
                        onSaved: (value){
                          groupBrunch = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'الفرع',
                          labelText: 'فرع الصنف',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل عدد المنتجات داخل الصنف';
                          }
                          int? n = int.tryParse(value);
                          if(n == null) {
                            return '"$value" is not a valid number';
                          }
                          return null;
                        },
                        onSaved: (value){
                          numberOfProducts = int.tryParse(value!)!;
                        },
                        // autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'العدد',
                          labelText: 'عدد المنتجات',
                          prefixIcon: Icon(Icons.note),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child: TextFormField(
                          controller: _date,
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'أدخل تاريخ';
                            }
                            return null;
                          },
                          onSaved: (value){
                            dateOfArrivalGroup = value!;
                          },
                          decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_today_rounded,
                              textDirection: ui.TextDirection.ltr,
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
                                _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                                dateOfArrivalGroup = DateFormat('yyyy-MM-dd').format(pickeddate);
                              });
                            }
                          },
                        ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 120),
                        child: Builder(
                          // ignore: deprecated_member_use
                          builder: (context) => ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: getColor(Colors.blue, Colors.red)
                            ),
                            onPressed: () async {
                              if (formstate.currentState!.validate())
                              {
                                formstate.currentState!.save();
                                showLoading(context);
                                try {
                                  await FirebaseFirestore.instance.collection('Suppliers').doc(widget.suppliersId)
                                      .collection('group').add({
                                    'groupCode' : groupCode,
                                    'groupName' : groupName,
                                    'groupSection' : groupSection,
                                    'groupBrunch' : groupBrunch,
                                    'numberOfProducts' : numberOfProducts,
                                    'dateOfArrivalGroup' : dateOfArrivalGroup,
                                    'suppliersId' : widget.suppliersId,
                                  });
                                  // ignore: use_build_context_synchronously
                                  Navigator.of(context).pop();
                                  AwesomeDialog(
                                    context : this.context,
                                    title: 'إضافه صنف',
                                    animType: AnimType.rightSlide,
                                    body: const Text('تمت إضافه الصنف'),
                                    dialogType: DialogType.success,
                                    // btnCancelOnPress: () {},
                                    btnOkOnPress: () {},
                                  ).show();
                                }on FirebaseAuthException catch (e) {
                                  Navigator.of(context).pop();
                                  AwesomeDialog(
                                      context : this.context,
                                      title: 'الحاله',
                                      body:  e.message != null ? Text(e.code)
                                      // : e.code != null ? Text(e.code)
                                          : const Text('حدث خطأ ما: بالرجاء المحاوله لاحقاً'),
                                      dialogType: DialogType.warning)
                                      .show();
                                }
                              } else {}
                            },
                            // color: Colors.blue,
                            child: const Text(
                              ' تسجيل الصنف ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
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
