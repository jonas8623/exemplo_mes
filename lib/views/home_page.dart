import 'package:exemplo_mes/model/model.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Month? _month;

  _text(String?  message) {
    return Text(message ?? 'Não identificado');
  }

  _field() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18.2),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.2)
        ),
        hintText: 'Insira um mes'
      ),
      showCursor: true,
      onChanged: (textToInteger) { setState(() => _month?.month = int.tryParse(textToInteger));},

      // TextButton(
      //     onPressed: () { setState(() => _month?.month = 4);},
      //     child: Text('Ver mês')
      // )
    );
  }

  @override
  void initState() {
    super.initState();
    // Só vai ser iniciado apenas uma vez
    _month = Month();
  }

  @override
  Widget build(BuildContext context) {

    // Vai ser repetido toda vez que buildar o app
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 255, 100, 0.8),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            _text('${_month?.month}'), // Text('${_month?.month ?? 'Não identificado'}'),
            _text('${_month?.checkMonth()}'), // Text('${_month?.checkMonth() ?? 'Não identificado'}'),
            _field()
          ],
        ),
      ),
    );
  }
}
