import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: "Nome Completo"),
              validator: (text) {
                if (text.isEmpty)
                  // ignore: missing_return, missing_return
                  return "Nome inválido";
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "e-mail"),
              keyboardType: TextInputType.emailAddress,
              validator: (text) {
                if (text.isEmpty || !text.contains("@"))
                  // ignore: missing_return, missing_return
                  return "e-mail inválido";
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "senha"),
              obscureText: true,
              validator: (text) {
                // ignore: missing_return
                if (text.isEmpty || text.length < 6) return "Senha inválida!";
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Endereço"),
              validator: (text) {
                // ignore: missing_return
                if (text.isEmpty) return "Endereço inválida!";
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 44.0,
              child: RaisedButton(
                child: Text(
                  "Criar Conta",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  if (_formKey.currentState.validate()) {}
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
