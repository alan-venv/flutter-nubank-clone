import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Linux4dev Nubank Clone',
    home: Home(),
  ));
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: Color(0xFF8A05BE)));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _viewIcon = Icons.visibility_off_outlined;

  void _changeViewIcon() {
    setState(() {
      if (_viewIcon == Icons.visibility_off_outlined) {
        _viewIcon = Icons.visibility_outlined;
      } else {
        _viewIcon = Icons.visibility_off_outlined;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A05BE),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * .83,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(19, 20, 19, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Olá, Alan",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                _changeViewIcon();
                              },
                              child: Icon(
                                _viewIcon,
                                size: 30,
                                color: Colors.white,
                              ),
                              style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape:
                                  MaterialStateProperty.all(CircleBorder()),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF9932cc))),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.settings,
                                size: 30,
                                color: Colors.white,
                              ),
                              style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape:
                                  MaterialStateProperty.all(CircleBorder()),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF9932cc))),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.credit_card_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              "   Cartão de crédito",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: Text(
                          "Fatura atual",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: Text(
                          "R\$ 2174,98",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Josefin Sans'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Row(
                          children: [
                            Text("Limite disponivel  ",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black87)),
                            Text("R\$ 225,02",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.grey,
                              ),
                              Text(
                                "  Conta",
                                style:
                                TextStyle(color: Colors.grey, fontSize: 18),
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Text(
                            "Saldo diponível",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: Text(
                            "R\$ 67,25",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Josefin Sans'),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xFFf8d0ff),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Icon(
                                  Icons.card_giftcard_outlined,
                                  color: Color(0xFF8A05BE),
                                ),
                              ),
                              Text(
                                "  Rewards",
                                style: TextStyle(
                                    color: Color(0xFF8A05BE), fontSize: 20),
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Text(
                            "Apague compras com pontos que nunca expiram.",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "CONHECER",
                            style: TextStyle(color: Color(0xFF8A05BE)),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Color(0xFF8A05BE),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xFFf8d0ff),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Icon(
                                  Icons.beach_access_outlined,
                                  color: Color(0xFF8A05BE),
                                ),
                              ),
                              Text(
                                "  Seguro de vida",
                                style: TextStyle(
                                    color: Color(0xFF8A05BE), fontSize: 20),
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Text(
                            "Conheça Nubank Vida: um seguro simples e que cabe no bolso.",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "CONHECER",
                            style: TextStyle(color: Color(0xFF8A05BE)),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Color(0xFF8A05BE),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.credit_card_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              "   Google Pay",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Text(
                            "Use o Google Pay com seus cartões Nubank",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "REGISTRAR MEU CARTÃO",
                            style: TextStyle(color: Color(0xFF8A05BE)),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Color(0xFF8A05BE),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .17,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF8A05BE),
          child: Padding(
            padding: EdgeInsets.fromLTRB(19, 17, 0, 17),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildBottomButtons("Pix", Icons.widgets_outlined),
                  buildBottomButtons("Pagar", Icons.payments_outlined),
                  buildBottomButtons("Indicar amigos", Icons.person_add_alt_1_outlined),
                  buildBottomButtons("Transferir", Icons.call_made_outlined),
                  buildBottomButtons("Depositar", Icons.call_received_outlined),
                  buildBottomButtons("Cartão virtual", Icons.credit_card_outlined),
                  buildBottomButtons("Recarga de celular", Icons.phone_android_outlined),
                  buildBottomButtons("Ajustar limite", Icons.format_align_justify_outlined),
                  buildBottomButtons("Bloquear cartão", Icons.lock),
                  buildBottomButtons("Cobrar", Icons.monetization_on_outlined),
                  buildBottomButtons("Doação", Icons.arrow_circle_up_outlined),
                  buildBottomButtons("Me ajuda", Icons.help_outline),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }

  Widget buildBottomButtons(String text, IconData icon){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
      width: 88,
      decoration: BoxDecoration(
          color: Color(0xFF9932cc),
          borderRadius: BorderRadius.circular(5)),
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(6),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 23,
                  color: Colors.white,
                ),
                Container(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
    );
  }
}