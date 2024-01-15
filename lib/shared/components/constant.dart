import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
final formKey = GlobalKey<FormState>();
IconData cibIcon = Icons.edit;
var emailController = TextEditingController();
var passwordController = TextEditingController();
var userNameController = TextEditingController();