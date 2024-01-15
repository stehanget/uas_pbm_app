import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Refiandri Indrawan (2019240019)'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
              child: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          )),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const Text(
                  'SIAKAD UNSADA',
                  style: TextStyle(color: Colors.blue, fontSize: 24.0),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'User Name', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Password', border: OutlineInputBorder()),
                ),
                TextButton(
                  onPressed: () => {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll<
                                EdgeInsetsDirectional>(
                            EdgeInsetsDirectional.symmetric(vertical: 20.0)),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.0))))),
                    onPressed: () => {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Does not have account?',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
