import 'package:flutter/material.dart';
import 'package:ubaia/components/titulo.dart';
import 'package:ubaia/routes/produto.dart';
import 'package:ubaia/values/strings.dart';

final str = Strings();

class CompradosRecentemente extends StatefulWidget {
  @override
  _CompradosRecentementeState createState() => _CompradosRecentementeState();
}

class _CompradosRecentementeState extends State<CompradosRecentemente> {
  Widget _buildProduct(String url, String nome) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaginaProduto(title: "Cestou", itemTitle: nome,))
        );
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.network(
              url,
              height: 100,
              width: 100,
            ),
          ),
          Text(nome)
        ],
      ),
    );
  }

  List<String> imageList = [
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.scienceabc.com%2Fwp-content%2Fuploads%2F2015%2F09%2FBananas1.jpg&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.i3YhhzW6KFlSKJELpyVK8gHaHY%26pid%3D15.1&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.RSvLuPD2FVwQdxNluQiJxgHaHg%26pid%3D15.1&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.5rTTaPLBBvSyrLk9iPrUUQHaIo%26pid%3D15.1&f=1",
    "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7ZawEqQ5Uw757l2Mv586iwHaHC%26pid%3D15.1&f=1"
  ];

  List<String> nameList = ["Banana", "Alface", "Tomate", "Leite", "Milho"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Titulo(
          title: str.comprados_recentemente,
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext content, int index) {
              return _buildProduct(imageList[index], nameList[index]);
            },
          ),
        ),
      ],
    );
  }
}
