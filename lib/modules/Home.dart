import 'package:cib/modules/cubit/cubit.dart';
import 'package:cib/modules/cubit/states.dart';
import 'package:cib/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return  Scaffold(
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
              actions: [
                IconButton(
                    onPressed: (){
                      print('User profile');
                    },
                    icon: Icon(Icons.account_circle,
                      color: Colors.white,
                      size: 50,
                    )),
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
            ),

          );
        },

      ),
    );
  }
}
