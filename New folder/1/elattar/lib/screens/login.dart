import 'package:elattar/screens/manager/home_manager.dart';
import 'package:elattar/screens/moderators/home_moderators.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  width: screenWidth ,
                  child: Image(
                    width: screenWidth,
                    image: const AssetImage("assets/login.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget> [
                Text('Welcome Back', style: TextStyle(color: Colors.black, fontSize: 35),),
              ],
            ),
            const SizedBox(height: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget> [
                Text('إسم المستخدم', style: TextStyle(color: Colors.black, fontSize: 25),),
              ],
            ),
            const SizedBox(height: 5,),
            SizedBox(
              width: screenWidth * .85,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextFormField(
                    // controller: nameController,
                    // ignore: missing_return
                    validator: (value)
                    {
                      return null;
                      // if(value.isEmpty)
                      // {
                      //   return _errorMessage(hint);
                      // }
                    },
                    // autofillHints: autoFillHints,
                    // onSaved: onClick,
                    // autofocus: false,
                    // keyboardType: textType,
                    // obscureText: hint == ' أدخل كلمه المرور ' ? true : false,
                    // cursorColor: kMainColor,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email,color: Colors.black,),
                      // hintText: hint,
                      // prefixIcon: Icon(
                      //   icon,
                      //   color: kMainColor,
                      // ),
                      filled: true,
                      fillColor: Colors.white,
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
              )
            ),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget> [
                Text('كلمه المرور', style: TextStyle(color: Colors.black, fontSize: 25),),
              ],
            ),
            const SizedBox(height: 5,),
            SizedBox(
              width: screenWidth * .8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextFormField(
                    // controller: nameController,
                    // ignore: missing_return
                    validator: (value)
                    {
                      return null;

                      // if(value.isEmpty)
                      // {
                      //   return _errorMessage(hint);
                      // }
                    },
                    // autofillHints: autoFillHints,
                    // onSaved: onClick,
                    autofocus: false,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isSecurePassword,
                    // cursorColor: kMainColor,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock, color: Colors.black,),
                      // hintText: hint,
                      // prefixIcon: Icon(
                      //   icon,
                      //   color: kMainColor,
                      // ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: togglePassword(),
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
            ),
            const SizedBox(height: 35,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: getColor(Colors.white, Colors.blue)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, HomeManager.id);
                    },
                    child: const Text('تسجيل الدخول', style: TextStyle(color: Colors.black),),
                  ),
                ]
            ),
            const SizedBox(height: 35,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: getColor(Colors.white, Colors.yellow)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, HomeModerators.id);
                    },
                    child: const Text('تسجيل المسوق', style: TextStyle(color: Colors.black),),
                  ),
                ]
            ),
          ],
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

  Widget togglePassword(){
    return IconButton(
      onPressed: (){
        setState((){
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }

}
