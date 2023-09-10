import 'package:fc_project/data/local_data/local_storge.dart';
import 'package:fc_project/data/model/signup.dart';
import 'package:fc_project/data/service/auth_service.dart';
import 'package:fc_project/presentation/screen/login.dart';
import 'package:fc_project/presentation/screen/signup.dart';
import 'package:flutter/material.dart';

void main() async{
  await initgetit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      theme: ThemeData(primarySwatch: Colors.grey ),
      home: LogIn()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
   
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed:(){
        //   ProductImple().pageList();
        //   // AuthImple().logIn(UserModel(username: 'user1235',password: 'verysecret'));
        onPressed: () {
          AuthImple().signUp(SignUpModel(
              username: "aya1233",
              password: "verysecretq",
              password_confirmation: "verysecretq"));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
