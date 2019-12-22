import 'package:estudo01/cadastro.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unifesspa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60.0,
          left: 40.0,
          right: 40.0,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: Center(
                child: Image.asset("assets/01.png"),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 30.0,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.green, Colors.greenAccent],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Fazer Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 1],
                  colors: [
                    Colors.lightGreen,
                    Colors.greenAccent,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cadastro()),
                    );
                  },
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
