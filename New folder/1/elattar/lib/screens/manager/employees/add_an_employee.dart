// ignore_for_file: unnecessary_null_comparison, use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:elattar/screens/login.dart';
import 'package:elattar/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class AddAnEmployee extends StatefulWidget {
  const AddAnEmployee({Key? key}) : super(key: key);
  static String id = 'AddAnEmployee';

  @override
  State<AddAnEmployee> createState() => _AddAnEmployeeState();
}

class _AddAnEmployeeState extends State<AddAnEmployee> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final _auth = Auth();
  late Reference ref;
  late String email;
  late String password;

  // GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إضافه موظف',
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
          key: _globalKey,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل بريد إلكتروني';
                          }
                          return null;
                        },
                        onSaved: (value){
                          email = value!;
                        },
                        autofillHints: const [AutofillHints.email],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'gmail.com@',
                          labelText: 'البريد الإلكتروني للموظف',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'أدخل رقم سري';
                          }
                          return null;
                        },
                        onSaved: (value){
                          password = value!;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '*********',
                          labelText: 'الرقم السري',
                          prefixIcon: Icon(Icons.lock),
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
                              if (_globalKey.currentState!.validate())
                              {
                                _globalKey.currentState!.save();
                                showLoading(context);
                                try {
                                  await _auth.signUp(email, password,);
                                  User? user = FirebaseAuth.instance.currentUser;
                                  await user!.sendEmailVerification();
                                  await FirebaseAuth.instance.signOut();
                                  Navigator.of(context).pop();
                                  Navigator.pushNamedAndRemoveUntil(context, Login.id, (route) => false);
                                  // Navigator.of(context).pushNamedAndRemoveUntil(Login.id, (route) => false);
                                  // AwesomeDialog(
                                  //     context : this.context,
                                  //     title: 'التحقق من الحساب',
                                  //     animType: AnimType.rightSlide,
                                  //     body: const Text('.تم إرسال رساله إلي الإيميل الخاص بك : يرجي تأكيد الرساله في حسابك علي البريد الإلكتروني ؛ للتأكد من أنك المالك لهذا البريد منعاً للإحتيال '),
                                  //     dialogType: DialogType.warning,
                                  //     btnCancelOnPress: () {},
                                  //     btnOkOnPress: () {},
                                  // ).show();
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
                              ' تسجيل الموظف ',
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
              title: Text('من فضلك أنتظري قليلاً'),
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
