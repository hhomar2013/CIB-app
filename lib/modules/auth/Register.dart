import 'package:cib/layout/login_screen.dart';
import 'package:cib/modules/Home.dart';
import 'package:cib/shared/components/components.dart';
import 'package:cib/shared/components/constant.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Image.asset('assets/img/cibLogo-remove.png',
          fit: BoxFit.cover,
          height: 20,
          width: 20,
        ),
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
      title: Text('Register',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_forward_sharp) ,
          color: Colors.white,)
        ],
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/mobilecover.jpg'),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(Colors.blueAccent.withOpacity(0.9), BlendMode.modulate,)
          ),
        ),
      child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('UserName',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    )
                )
            ),
          ),
          SizedBox(height: 15,),
          Text('Email',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    )
                )
            ),
          ),
          SizedBox(height: 15,),
          Text('Password',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    )
                )
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: defaultButton(function: (){},
                      // width: 270,
                      text: 'Register',
                      backGround: Colors.deepOrangeAccent
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          // defaultButton(function: (){
          //   navigateTo(context, LoginScreen());
          // },
          //   width: double.maxFinite,
          //   text: 'Back To Login',
          //   backGround: Colors.transparent,
          // ),
        ],
      ),
    ),
      ),

    );
  }
}
