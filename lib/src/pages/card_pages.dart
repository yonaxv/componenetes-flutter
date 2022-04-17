import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo1(),
        SizedBox(
          height: 30.0,
        ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
        ),
      ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: [
        ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text(
              'Aqui estamos con la descripcion de la tarjeta para que tengan idea de lo que quiero mostrarles'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: Text('Cancelar')),
            TextButton(onPressed: () {}, child: Text('Ok'))
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(children: [
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
        ),
        // Image(
        //     image: NetworkImage(
        //         'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000')),
        Container(
            padding: EdgeInsets.all(10.0), child: Text('No se que poner xd'))
      ]),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
                color: Colors.black45,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(20.0, 20.0)),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
