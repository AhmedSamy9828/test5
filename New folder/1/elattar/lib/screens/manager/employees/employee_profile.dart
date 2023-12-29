import 'package:flutter/material.dart';

class EmployeeProfile extends StatefulWidget {
  const EmployeeProfile({Key? key}) : super(key: key);
  static String id = 'EmployeeProfile';

  @override
  State<EmployeeProfile> createState() => _EmployeeProfileState();
}
// ignore: prefer_typing_uninitialized_variables
var imageurl;
class _EmployeeProfileState extends State<EmployeeProfile> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    // var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الصفحه الشخصيه',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 30,
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
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pushNamed(AddAnEmployee.id);
        //   },
        //   icon: const Icon(
        //     Icons.person_add_alt_1,
        //     // color: Colors.white,
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
          alignment: Alignment.center,
          height: screenHeight * .9,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage("assets/background.jpg"),
          //       fit: BoxFit.fill
          //   ),
          // ),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20,),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .9 ,
                      height: 180,
                      decoration: const BoxDecoration(
                        // border: Border.all(
                        //     width: 4,
                        //     color: Theme.of(context).scaffoldBackgroundColor
                        // ),
                        // boxShadow: [
                        //   BoxShadow(
                        // spreadRadius: 2,
                        // blurRadius: 10,
                        // color: Colors.black.withOpacity(0.1),
                        // color: Colors.blue.withOpacity(0.2),
                        // offset: const Offset(0, 10)
                        // )
                        // ],
                        // shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   fit: BoxFit.cover,
                        //   image:
                        // backgroundPhoto != null ? NetworkImage(backgroundPhoto) :
                        // appInfoImagesDrawerDecoration != null ? NetworkImage(appInfoImagesDrawerDecoration) :
                        // const AssetImage(''),
                        // )
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 110,
                      child: Stack(
                          children: <Widget>[
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: Theme.of(context).scaffoldBackgroundColor
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      // color: Colors.black.withOpacity(0.1),
                                      color: Colors.blue.withOpacity(0.1),
                                      offset: const Offset(0, 10))
                                ],
                                shape: BoxShape.circle,
                              ),
                              child:
                              imageurl == null ? const CircularProgressIndicator() :
                              CircleAvatar(
                                backgroundImage: NetworkImage(imageurl),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            // Positioned(
                            //     bottom: 0,
                            //     right: 0,
                            //     child: Container(
                            //       height: 28,
                            //       width: 28,
                            //       decoration: BoxDecoration(
                            //         shape: BoxShape.circle,
                            //         border: Border.all(
                            //           width: 1,
                            //           color: Theme.of(context).scaffoldBackgroundColor,
                            //         ),
                            //         color: Colors.red,
                            //       ),
                            //       child: Center(
                            //         child: InkWell(
                            //           child: const Icon(
                            //             Icons.edit,
                            //             color: Colors.black,
                            //           ),
                            //           onTap: () {
                            //             // Navigator.of(context).push(MaterialPageRoute(
                            //             //     builder: (BuildContext context){return EditPersonalPhotoShopper(imageurl: imageurl, governorate: governorate, center: center, name:name, email: email);})
                            //             // );
                            //           },
                            //         ),
                            //       ),
                            //     )
                            // ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('الإسم', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('إسم المستخدم', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('البريد الإكتروني', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('البريد', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('رقم الهاتف', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('الرقم', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('الرقم القومي', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('الرقم القومي', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('المحافظه', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('المحافظه', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('المركز', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('المركز', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('العنوان', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('العنوان', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('الجنس', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('ذكر | أنثي', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('الحاله الإجتماعيه', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('الحاله', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('تاريخ الميلاد', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('التاريخ', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('تاريخ التعيين', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('التاريخ', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 15,),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('الرقم السري', style: TextStyle(color: Colors.black),),
                  // subtitle: Text(name ?? 'إسم المستخدم'),
                  subtitle: Text('***********', style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(height: 50,),
              // const SizedBox(height: 15,),
              // Directionality(
              //   textDirection: TextDirection.rtl,
              //   child: ListTile(
              //     title: const Text('رقم الهاتف', style: TextStyle(color: Colors.black),),
              //     // subtitle: Text(name ?? 'إسم المستخدم'),
              //     subtitle: const Text('الرقم', style: TextStyle(color: Colors.black),),
              //     trailing: InkWell(
              //       child: const Icon(
              //         Icons.edit,
              //         color: Colors.red,
              //       ),
              //       onTap: () {
              //         // Navigator.of(context).push(MaterialPageRoute(
              //         //     builder: (BuildContext context){return EditNameShopper(name: name,);})
              //         // );
              //       },
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 15,),
              // Directionality(
              //   textDirection: TextDirection.rtl,
              //   child: ListTile(
              //     title: const Text('البريد الإلكتروني', style: TextStyle(color: Colors.black),),
              //     // subtitle: Text(name ?? 'إسم المستخدم'),
              //     subtitle: const Text('البريد', style: TextStyle(color: Colors.black),),
              //     trailing: InkWell(
              //       child: const Icon(
              //         Icons.edit,
              //         color: Colors.red,
              //       ),
              //       onTap: () {
              //         // Navigator.of(context).push(MaterialPageRoute(
              //         //     builder: (BuildContext context){return EditNameShopper(name: name,);})
              //         // );
              //       },
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 15,),
              // Directionality(
              //   textDirection: TextDirection.rtl,
              //   child: ListTile(
              //     title: const Text('تاريخ الميلاد', style: TextStyle(color: Colors.black),),
              //     // subtitle: Text(name ?? 'إسم المستخدم'),
              //     subtitle: const Text('التاريخ', style: TextStyle(color: Colors.black),),
              //     trailing: InkWell(
              //       child: const Icon(
              //         Icons.edit,
              //         color: Colors.red,
              //       ),
              //       onTap: () {
              //         // Navigator.of(context).push(MaterialPageRoute(
              //         //     builder: (BuildContext context){return EditNameShopper(name: name,);})
              //         // );
              //       },
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 15,),
              // Directionality(
              //   textDirection: TextDirection.rtl,
              //   child: ListTile(
              //     title: const Text('الجنس', style: TextStyle(color: Colors.black),),
              //     // subtitle: Text(name ?? 'إسم المستخدم'),
              //     subtitle: const Text('ذكر | أنثي', style: TextStyle(color: Colors.black),),
              //     trailing: InkWell(
              //       child: const Icon(
              //         Icons.edit,
              //         color: Colors.red,
              //       ),
              //       onTap: () {
              //         // Navigator.of(context).push(MaterialPageRoute(
              //         //     builder: (BuildContext context){return EditNameShopper(name: name,);})
              //         // );
              //       },
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 15,),
              // Directionality(
              //   textDirection: TextDirection.rtl,
              //   child: ListTile(
              //     title: const Text('كلمه المرور', style: TextStyle(color: Colors.black),),
              //     // subtitle: Text(name ?? 'إسم المستخدم'),
              //     subtitle: const Text('**********', style: TextStyle(color: Colors.black),),
              //     trailing: InkWell(
              //       child: const Icon(
              //         Icons.edit,
              //         color: Colors.red,
              //       ),
              //       onTap: () {
              //         // Navigator.of(context).push(MaterialPageRoute(
              //         //     builder: (BuildContext context){return EditNameShopper(name: name,);})
              //         // );
              //       },
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
