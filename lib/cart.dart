import "package:flutter/material.dart";
import 'package:flutter_cart/cart_product.dart';
class Cart extends StatefulWidget{
  @override
  _State createState() =>_State();
}
class _State extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title:Center(child:Text("Cart"),),
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child:Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total",style: TextStyle(fontSize: 20.0),),
                subtitle: Text(total.toString(),style: TextStyle(color:Colors.red,fontWeight:FontWeight.bold,fontSize: 16.0),),
              ),
            ),
            Expanded(
              child:new MaterialButton(onPressed: (){},
                child:new Text("Check Out",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}