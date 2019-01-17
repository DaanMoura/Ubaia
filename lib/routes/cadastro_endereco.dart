import 'package:flutter/material.dart';

class CadastroEndereco extends StatefulWidget {
  @override
  _CadastroEnderecoState createState() => _CadastroEnderecoState();
}

class _CadastroEnderecoState extends State<CadastroEndereco> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _listaEstados = ["ac","al","am","ap","ba","ce","df","es","go","ma","mg","ms","mt","pa","pb","pe","pi","pr","rj","rn","ro","rr","rs","sc","se","sp","to"];

  String _value = "";

  List<DropdownMenuItem<String>> _makeDropdownList(List<String> list) {
    List<DropdownMenuItem<String>> dropdowlist = [];

    for(var i = 0; i < list.length; i++) {
      dropdowlist.add(DropdownMenuItem<String>(value: list[i].toUpperCase(), child: Text(list[i].toUpperCase()),));
    }

    return dropdowlist;
  }

  String _updateHint() {
    if(_value.isEmpty) {
      return "Estado";
    } else {
      return _value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de endereço"),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          child: Form(
            key: this._formKey,
            child: ListView(
              children: <Widget>[
                DropdownButton<String> (
                  isExpanded: true,
                  hint: Text(_updateHint()),
                  onChanged: (String selected) {setState(() {
                    _value = selected;
                  });},
                  items: _makeDropdownList(_listaEstados),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Ex: São Carlos",
                    labelText: "Cidade",
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Ex: 12345-123",
                    labelText: "CEP",
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Ex: Cidade Jardim",
                    labelText: "Bairro",
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Ex: Av. São Carlos",
                    labelText: "Rua",
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "",
                    labelText: "Número",
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Ex: Ap 10",
                    labelText: "Complemento",
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Ex: Praça",
                    labelText: "Referência",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.brown,
                    child: Text("Finalizar".toUpperCase(), style: TextStyle(color: Colors.white70),),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
