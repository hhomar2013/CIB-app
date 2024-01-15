import 'package:cib/modules/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates>{
      AppCubit() : super(AppInitialState());
      static AppCubit get(context) => BlocProvider.of(context);
      int currentIndex = 0;
      late Database database;
      List<BottomNavigationBarItem>  bottomItems = [
        const BottomNavigationBarItem(
            icon: Icon(
                Icons.business
            ),
            label: 'Business'
        ),
        const BottomNavigationBarItem(
            icon: Icon(
                Icons.science
            ),
            label: 'Science'
        ),
        const BottomNavigationBarItem(
            icon: Icon(
                Icons.laptop
            ),
            label: 'Technology'
        ),
        const BottomNavigationBarItem(
            icon: Icon(
                Icons.settings
            ),
            label: 'Settings'
        ),
      ];
      void changeBottomNavBar(int index){
        currentIndex = index;
        emit(AppChangeBottomNavBarState());
      }

      //Create database
      void createDatabase() async{
        database = await openDatabase(
            'cib.db',
            version: 1,
            onCreate: (database , version) {
              database.execute("CREATE TABLE users(id INTEGER PRIMARY KEY ,username TEXT ,email TEXT ,password TEXT ,status TEXT)").then((value) {
                print('Table Created');
              }).catchError((error){
                print('Error in create this table ${error.toString()}');
              });
            },
            onOpen: (database){
              // getDataFromDatabase(database);
              print('DB Opened');
            }
        ).then((value) {
          emit(AppCreateDataBaseState());
          return database = value;
        });
      }

      Future insertDatabase({
        required String title,
        required String date,
        required String time,
      }) async {
        return await database.transaction((txn) {
          return  txn.rawInsert("INSERT INTO tasks(title,date,time,status)"
              " VALUES('$title','$date','$time','new')")
              .then((value) {
            print('$value Inserted.');
            emit(AppInsertDataBaseState());

          }).catchError((onError) {
            print('Error in $onError');
          });
        });
      }


      void  getDataFromDatabase(database)  {
        emit(AppGetDataBaseLoadingState());
        database.rawQuery('SELECT * FROM tasks').then((value){
          value.forEach((element){
            // if(element['status'] == 'new'){
            //   taskMap.add(element);
            // }else if (element['status'] == 'done'){
            //   doneTaskMap.add(element);
            // }else if (element['status'] == 'archive'){
            //   archiveTaskMap.add(element);
            // }
          });
          emit(AppGetDataBaseState());
        });//calling
      }

      void updateData({
        required String status,
        required int id,
      })async{
        database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?' , ['$status',id]).then((value) {
          getDataFromDatabase(database);
          emit(AppUpdateDatabaseState());
        });
      }

      void deleteData({
        required id,
      })async{
        database.rawDelete('DELETE FROM tasks WHERE id = $id');
        getDataFromDatabase(database);
        emit(AppDeleteDatabaseState());
      }


}