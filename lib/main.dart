import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talandron Prelims',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogInPage(),
    );
  }
}

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,  
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/mail.png'),
              ),
              const SizedBox(width: 20),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: const Text(
                  'Mail Me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ],
            ),
          const SizedBox(
          width: 400,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username',
            ),  
          )),
          const SizedBox(height: 30),
          const SizedBox(
          width: 400,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          )),
          const SizedBox(height: 30),
          SizedBox(
            width: 400,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Log In"),
            ),
          ),
          SizedBox(
            height: 80,
            child: TextButton(
              onPressed: () {},
              child: const Text("Forgot Password?"),
          ),),
          const SizedBox(height: 100), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('No Account?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Register Here!'),
                 )
              ]
            ),
        ])
    ),
  );
}
}