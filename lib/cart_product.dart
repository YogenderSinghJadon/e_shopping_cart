import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}
double total=0.0;
class _Cart_productsState extends State<Cart_products> {
  var Products_in_the_cart=[{
    "name":"Headphones",
    "image":"assets/images/headphones.jpg",
    "price":"100",
    "discountedprice":"80",
    "seller":"SriRam",
  },
    {
      "name":"Shoes",
      "image":"assets/images/shoes.jpg",
      "price":"500",
      "discountedprice":"450",
      "seller":"DoBhai",
    },
    {
      "name":"Realme 5 pro",
      "image":"assets/images/realme5pro.jpg",
      "price":"15000",
      "discountedprice":"12000",
      "seller":"Flipkart",
    },
  ];
  @override
  Widget build(BuildContext context) {
    //print(Products_in_the_cart.length);
    total=0.0;
    return new ListView.builder(
      itemCount: Products_in_the_cart.length,
      itemBuilder: (context,index){
        total+=double.parse(Products_in_the_cart[index]['discountedprice']);
        return new product_instance_cart(
            prod_name:Products_in_the_cart[index]["name"],
            prod_price:Products_in_the_cart[index]["price"],
            prod_image:Products_in_the_cart[index]["image"],
            prod_discountedprice:Products_in_the_cart[index]["discountedprice"],
            prod_seller:Products_in_the_cart[index]["seller"],
            );
      });
  }
}


class product_instance_cart extends StatelessWidget {
  final prod_name,prod_price,prod_image,prod_discountedprice,prod_seller;
  product_instance_cart({this.prod_name,this.prod_price,this.prod_image,this.prod_discountedprice,this.prod_seller});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(prod_image,width: 100.0,height: 100.0,),
        title: new Text(prod_name,style: TextStyle(fontSize: 20.0),),
        subtitle:new Column(
          children:<Widget>[
            new Row(
              children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(4.0),
                   child:new Text("Price:",
                     style: TextStyle(fontSize: 16.0),
                   ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                  child:new Text('Rs $prod_price',
                    style: TextStyle(color:Colors.green,fontSize: 16.0),
                  ),
                ),

                ],
                ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 0.0, 8.0, 8.0),
                  child:new Text("Discounted Price:",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 8.0),
                  child:new Text('Rs $prod_discountedprice',
                    style: TextStyle(color:Colors.red,fontSize: 16.0),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child:new Text(
                ' $prod_seller',style:TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
              ],
            ),
        trailing: Image.asset('assets/images/redcross.jpg',width: 20.0,height: 20.0,),
        ),
    );
  }
}
