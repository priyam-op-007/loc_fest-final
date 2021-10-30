import 'package:flutter/material.dart';
import 'package:loc_fest/Style.dart';
import 'package:loc_fest/SuccessPage.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartPage(),
    );
  }
}

class cartPage extends StatefulWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: pink,
                    image: DecorationImage(
                        image: AssetImage("asset/images/murti3.jpg"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: () {  },
                        ),
                        IconButton(
                          icon: Icon(Icons.search, color: Colors.white,), onPressed: () {  },
                        ),
                      ],
                    ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text("MURTIS FROM SHYAAM", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.star, color: Colors.white,),
                                Icon(Icons.star, color: Colors.white,),
                                Icon(Icons.star, color: Colors.white,),
                                Icon(Icons.star, color: Colors.white,),
                                Icon(Icons.star, color: Colors.white,),
                                Text("100 Reviews", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),)

                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(Icons.favorite, color: Colors.red, size: 35,),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text("It needs a lot of hardwork , I work day and night during these festive season as it is the only source of income for me and my family . It's only the devotion which always appreciate me to put a lot of effort so that I can also celebrate these seasons with my love ones!!", style: TextStyle(
                      color: blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),)

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("YOUR CART", style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 0.5,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    productsWidget("ganesha.jpeg", "Ganesha Idol"),
                    SizedBox(height: 5,),
                    productsWidget("idol1.jpg", "Shiva Idol"),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total 2 items", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                        ),),
                        Text("\Rs 500", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("+Tip", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey
                        ),),
                        Text("\Rs 25", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey
                        ),),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("+Delivery Charges", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey
                        ),),
                        Text("\Rs 0", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey
                        ),),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Coupon Discount", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey
                        ),),
                        Text("-\Rs 10", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey
                        ),),
                      ],
                    ),
                    SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TOTAL", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                        ),),
                        Text("\Rs 515", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                        ),),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Text("Want to appreciate him through a message?", style: TextStyle(
                      color: Colors.blue
                    ),),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: openSuccessPage,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: pink,
                        ),
                        child: Text("CHECK OUT", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Row productsWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/images/$img")
              )
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                ],
              ),
              Text(
                "Murtis are totally eco-friendly !!",
                style: TextStyle(
                  fontSize: 12,
                ),),

            ],
          ),
        ),
        SizedBox(width: 10,),
        Row(
          children: [
            Text("Quantity ", style: TextStyle(
              fontSize: 14,
              color: Colors.black
            ),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
              ),
              child: Text("1", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700
              ),),
            ),
          ],
        )
      ],
    );
  }
  void openSuccessPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage()));
  }
}
