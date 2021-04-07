import 'package:flutter/material.dart';

void main() {
  // eksekusi untuk menjalankan flutter pertama kali
  // menjalankan function/class MyApp()
  runApp(MyApp());
}

// function class MyApp memanggil ekstensi StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //mengeksekusi function/class MyHomePage()
      //dengan variabel title yang berisi UTS Framwork Mobile
      home: MyHomePage(title: 'UTS Framwork Mobile'),
    );
  }
}

//function class MyHomePage memanggil ekstensi StatefulWidget
class MyHomePage extends StatefulWidget {
  
  //mendeklarasi variabel MyHomePage
  MyHomePage({Key key, this.title}) : super(key: key);
  //Mendeklarasi variabel title
  final String title;

  @override
  //Menjalankan fungsi/class _MyHomePageState
  _MyHomePageState createState() => _MyHomePageState();
}

//function class _MyHomePageState memanggil ekstensi State
class _MyHomePageState extends State<MyHomePage> {
  //Mendeklarasi variabel _inputField
  //digunakan sebagai variabel awalan
  String _inputField = "Welcome";
  //Mendeklarasi variabel _inputField2
  //digunakan sebagai variabel dari input
  String _inputField2 = "";

  //mendeklarasi tipe fungsi _incrementAction
  void _incrementAction() {
    setState(() {
      //perintah untuk memindahkan nilai dari _inputField2 ke _inputField
      _inputField = _inputField2;
    });
  }

  //mendeklarasi tipe fungsi changeText
  void changeText(_input) {
    //perintah untuk menangkap nilai dari input
    _inputField2 = _input;
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //menampilaka isi dari variabel _inputField
            Text(
              '$_inputField',
              style: Theme.of(context).textTheme.headline4,
            ),
            //menampilkan TextFormField dengan fungsi changeText
            TextFormField(
              onChanged: (_input) => this.changeText(_input),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //mengeksekusi ketika tombol ditekan
        //menjalankan function _incrementAction
        onPressed: _incrementAction,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
