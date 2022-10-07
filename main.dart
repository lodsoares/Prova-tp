//Nome: Lorrayne Paula
import 'package:flutter/material.dart';

const List<String> filhos = <String>['1', '2', '3'];
const List<String> renda = <String>['4', '5', '6'];
const List<String> mae = <String>['7', '8'];
const List<String> vacina = <String>['9', '10'];


void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _filhos = "opcaofilhos";
  String _renda = "opcaorenda";
  String _infoText = "Informe seus dados";
  String _mae = "opcaomae";
  String _vacina = "opcaovacina";
  GlobalKey<FormState>_formKey = GlobalKey<FormState>();

  void _resetFields(){
    setState(() {
      _infoText = "Informe seus dados";
      _formKey = GlobalKey<FormState>();
    });
  }

  void auxilio(){
    setState(() {
      if(_filhos == 'opcaofilhos') {
        _infoText = "Selecione uma opcao";
      }
          if(_renda == 'opcaorenda') {
            _infoText = "Selecione uma opcao";
      }
      if(_mae == 'opcaomae') {
        _infoText = "Selecione uma opcao";
      }
       if(_vacina == 'opcaovacina') {
        _infoText = "Selecione uma opcao";
      }
          if (_vacina == '10') {
        _infoText = "Não recebe auxilio";
      }

      if(_filhos == '1'){
        if(_renda == '4')
          if(_mae == '7')
            if(_vacina == '9')
          _infoText = "Auxilio de 3630 reais";
      }
       if(_filhos == '1'){
        if(_renda == '4')
          if(_mae == '8')
            if(_vacina == '9')
              _infoText = "Auxilio de 2,5 salários mínimos";
      }

      if(_filhos == '1'){
        if(_renda == '5')
          if(_mae == '7')
            if(_vacina == '9')
          _infoText = "Auxilio de 2418 reais";
      }
      if(_filhos == '1'){
        if(_renda == '5')
          if(_mae == '8')
            if(_vacina == '9')
              _infoText = "Auxilio de 1,5 salários mínimos";
      }
      if(_filhos == '1') {
        if (_renda == '6')
          _infoText = "Não recebe auxilio";

      }
      if(_filhos == '2'){
        if(_renda == '4')
          if(_mae == '7')
            if(_vacina == '9')
              _infoText = "Auxilio de 3630 reais";
      }
      if(_filhos == '2'){
        if(_renda == '4')
          if(_mae == '8')
            if(_vacina == '9')
          _infoText = "Auxilio de 2,5 salários mínimos";
      }

      if(_filhos == '2'){
        if(_renda == '5')
          if(_mae == '7')
            if(_vacina == '9')
          _infoText = "Auxilio de 2418 reais";
      }
        if(_filhos == '2'){
        if(_renda == '5')
          if(_mae == '8')
            if(_vacina == '9')
              _infoText = "Auxilio de 1,5 salários mínimos";
      }
      else if(_filhos == '2') {
        if (_renda == '6')
          _infoText = "Não recebe auxilio";
      }
     if(_filhos == '3'){
        if(_renda == '4')
          if(_mae == '7')
            if(_vacina == '9')
          _infoText = "Auxilio de 4236 reais";
      }
       if(_filhos == '3'){
        if(_renda == '4')
          if(_mae == '8')
            if(_vacina == '9')
              _infoText = "Auxilio de 3 salários mínimos";
      }

       if(_filhos == '3'){
        if(_renda == '5')
          if(_mae == '7')
            if(_vacina == '9')
          _infoText = "Auxilio de 4236 reais";
      }
       if(_filhos == '3'){
        if(_renda == '5')
          if(_mae == '8')
            if(_vacina == '9')
              _infoText = "Auxilio de 3 salários mínimos";
      }
      if(_filhos == '3') {
        if (_renda == '6')
          _infoText = "Não recebe auxilio";
      }
    });

  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Auxílio Familiar"),
          centerTitle: true,
          backgroundColor: Colors.white60,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _resetFields,
            )
          ],
        ),
        backgroundColor: Colors.lightGreen,
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Icon(
                      Icons.people_rounded,
                      size: 120.0,
                      color: Colors.white30,
                    ),
                    DropdownButton

                      (items:
                    const [
                      DropdownMenuItem(value: "opcaofilhos", child: Text("Selecione o número de filhos da família")),
                      DropdownMenuItem(value: "1", child: Text("1")),
                      DropdownMenuItem(value: "2", child: Text("2")),
                      DropdownMenuItem(value: "3", child: Text("3 ou mais")),
                    ],

                        value: _filhos ,
                        onChanged: (String? value){
                          if (value is String){
                            setState(() {
                              _filhos = value;
                            });
                          }

                        }
                    ),
                    DropdownButton
                      (items:
                    const [
                      DropdownMenuItem(value: "opcaorenda", child: Text("Selecione a renda familiar mensal")),
                      DropdownMenuItem(value: "4", child: Text("Até 1 sálario mínimo")),
                      DropdownMenuItem(value: "5", child: Text("Até 2 sálarios mínimos")),
                      DropdownMenuItem(value: "6", child: Text("mais que 2 sálarios mínimos")),
                    ],
                        value: _renda,
                        onChanged: (String? value){
                          if (value is String){
                            setState(() {
                              _renda = value;
                            });
                          }
                        }
                    ),
                    DropdownButton
                      (items:
                    const [
                      DropdownMenuItem(value: "opcaomae", child: Text("Chefe de família é mãe solo?")),
                      DropdownMenuItem(value: "7", child: Text("Sim")),
                      DropdownMenuItem(value: "8", child: Text("Não")),
                    ],
                        value: _mae,
                        onChanged: (String? value){
                          if (value is String){
                            setState(() {
                              _mae = value;
                            });
                          }
                        }
                    ),
                    DropdownButton
                      (items:
                    const [
                      DropdownMenuItem(value: "opcaovacina", child: Text("Os filhos são vacinados?")),
                      DropdownMenuItem(value: "9", child: Text("Sim")),
                      DropdownMenuItem(value: "10", child: Text("Não")),
                    ],
                        value: _vacina,
                        onChanged: (String? value){
                          if (value is String){
                            setState(() {
                              _vacina = value;
                            });
                          }
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        height: 50.0,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                auxilio();

                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70),
                            child: const Text(
                              "Calcular valor auxilio",
                              style: TextStyle(color: Colors.black, fontSize: 25.0),
                            )),
                      ),
                    ),
                    Text(_infoText, style: const TextStyle(color: Colors.black, fontSize: 25.0,), textAlign: TextAlign.center,),

                  ],
                ))));
  }}

