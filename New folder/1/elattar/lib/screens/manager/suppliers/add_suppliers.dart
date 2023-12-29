import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class AddSuppliers extends StatefulWidget {
  const AddSuppliers({Key? key}) : super(key: key);
  static String id = 'AddSuppliers';

  @override
  State<AddSuppliers> createState() => _AddSuppliersState();
}

class _AddSuppliersState extends State<AddSuppliers> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late Reference ref;
  late String supplierName;
  late String supplierAddress;
  late String supplierNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إضافه مورد',
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
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل أسم المورد';
                          }
                          return null;
                        },
                        onSaved: (value){
                          supplierName = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'الإسم',
                          labelText: 'اسم المورد',
                          prefixIcon: Icon(Icons.abc),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.streetAddress,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل عنوان المورد';
                          }
                          return null;
                        },
                        onSaved: (value){
                          supplierAddress = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'موقع المورد',
                          labelText: 'العنوان',
                          prefixIcon: Icon(Icons.warehouse_rounded),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل رقم المورد';
                          }
                          return null;
                        },
                        onSaved: (value){
                          supplierNumber = value!;
                        },
                        autofillHints: const [AutofillHints.newUsername],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'رقم الهاتف',
                          labelText: 'الرقم',
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
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
                                  // final FirebaseAuth auth = FirebaseAuth.instance;
                                  // final User? user = auth.currentUser;
                                  // User? user = FirebaseAuth.instance.currentUser;
                                  await FirebaseFirestore.instance.collection('Suppliers').add({
                                    'supplierName' : supplierName,
                                    'supplierAddress' : supplierAddress,
                                    'supplierNumber' : supplierNumber,
                                  });
                                  // ignore: use_build_context_synchronously
                                  Navigator.of(context).pop();
                                  AwesomeDialog(
                                      context : this.context,
                                      title: 'إضافه مورد',
                                      animType: AnimType.rightSlide,
                                      body: const Text('تمت إضافه مورد'),
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
                              ' تسجيل المورد ',
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
