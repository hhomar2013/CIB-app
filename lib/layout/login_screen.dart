import 'package:cib/modules/Home.dart';
import 'package:cib/modules/auth/Register.dart';
import 'package:cib/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        leadingWidth: 130,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
              Text('User Name',
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
                    defaultButton(function: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen(),));
                    },
                        width: 270,
                        text: 'Login',
                        backGround: Colors.deepOrangeAccent
                    ),
                    SizedBox(width: 10,),
                    defaultIconButton(
                        width: 60,
                        Iconbtn: Icons.fingerprint,
                        function: (){},
                        backGround: Colors.deepOrangeAccent,
                        iconColor: Colors.white
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              defaultButton(function: (){
                navigateTo(context, RegisterScreen());
              },
                width: double.maxFinite,
                text: 'Register New User',
                backGround: Colors.transparent,
              ),
              defaultButton(function: (){},
                width: double.maxFinite,
                text: 'forget/Reset Password',
                backGround: Colors.transparent,
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              print('IBAN');
                            },
                            icon: Icon(Icons.vpn_lock ,
                              color: Colors.white,
                              size: 50,
                            )
                        ),
                        Text('IBAN',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              print('Tutorials');
                            },
                            icon: const Icon(Icons.phone_android ,
                              color: Colors.white,
                              size: 50,
                            )
                        ),
                        const Text('Tutorials',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              print('IBAN');
                            },
                            icon: const Icon(Icons.insert_chart_outlined ,
                              color: Colors.white,
                              size: 50,
                            )
                        ),
                        const Text('Exchange Rates',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              print('CIB Bonus');
                            },
                            icon: Icon(Icons.card_giftcard ,
                              color: Colors.white,
                              size: 50,
                            )
                        ),
                        Text('CIB Bonus',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              print('Offers');
                            },
                            icon: const Icon(Icons.bookmark_border ,
                              color: Colors.white,
                              size: 50,
                            )
                        ),
                        const Text('Offers',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              print('More');
                            },
                            icon: const Icon(Icons.keyboard_control_outlined ,
                              color: Colors.white,
                              size: 50,
                            )
                        ),
                        const Text('More',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
