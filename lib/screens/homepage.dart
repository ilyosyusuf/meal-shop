import 'package:eighthome/screens/product_data.dart';
import 'package:flutter/material.dart';
import 'package:eighthome/screens/product_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List names = [
    'Garlic Queso',
    'Oreo MilkShake',
    'Mint Cupcakes',
    'Peanut Butter Pie',
    'GF Red Spagetti',
    'Vegan Pizza'
  ];
  List rates = ['+33', '+84', '+12', '+23', '+12', '+7',];
  List pics = [
    'https://media.istockphoto.com/photos/soup-and-sandwich-picture-id186349341?b=1&k=20&m=186349341&s=170667a&w=0&h=ve4eZU8UJyn7ZrYdqqkg2vaOh0xGzeB3iihtZpN83mg=',
    'https://images.unsplash.com/photo-1641665271888-575e46923776?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b3JlbyUyMG1pbGtzaGFrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1587668178538-c07606344e4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWludCUyMGN1cGNha2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1554298128-c916518a4b34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVhbnV0JTIwYnV0dGVyJTIwcGllfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/delicious-spaghetti-served-on-a-black-plate-picture-id585769692?b=1&k=20&m=585769692&s=170667a&w=0&h=3effkj4P0BCJluf7L7t90MZgTnEwgp19M4ZyC1_dUxQ=',
    'https://media.istockphoto.com/photos/vegetarian-pizza-with-broccoli-cherry-tomato-pepper-and-mushrooms-picture-id1297290376?b=1&k=20&m=1297290376&s=170667a&w=0&h=lwGeM5VzMWRRwJpGwGhLgoMVSDMJL5OuCYhnhCmNthc=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 60,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              Text("Home"),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined)),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          _firstpic(),
          Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Top raced recipes",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text("Show all")
                ],
              )),
          Container(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                    data.map((e) => _horscroll(Products.fromJson(e))).toList(),
              )),
          _bigcont(),
          _gridcont(),
          _lastcont(),

        ],
      ),
    );
  }

  Container _firstpic() => Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: Image.network(
                "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVhbHMlMjB3aXRoJTIwb2xpdmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: 
              Container(
                width: 130,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.shopping_bag, size: 30.0,),
                    Text("SALE", style: TextStyle(fontSize: 20.0),),
                  ],
                ),
                  decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              )
            ),
            const Positioned(
              bottom: 30.0,
              left: 20.0,
              child: 
              Text("Get 20% off when you\npurchase 5 meal kits", style: TextStyle(fontSize: 30.0),),
            )
          ],
        ),
      );

  Container _horscroll(Products product) => Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 5.0),
        width: 150,
        decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(color: Colors.white60)),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  image: DecorationImage(
                      image: NetworkImage(product.picture!),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 10.0, left: 10.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                product.name!,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: const [
                      Icon(
                        Icons.star_border_outlined,
                        size: 20.0,
                        color: Colors.yellowAccent,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 20.0,
                        color: Colors.yellowAccent,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 20.0,
                        color: Colors.yellowAccent,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 20.0,
                        color: Colors.yellowAccent,
                      ),
                    ],
                  )),
                  Text(product.rate!),
                ],
              ),
            )
          ],
        ),
      );

  Container _bigcont() => Container(
        margin: EdgeInsets.all(20.0),
        height: 340,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.redeem_outlined, size: 80.0),
            Text("Get 20 credits for\n  inviting a friend", style: TextStyle(fontSize: 28.0),),
            Text("Enter a friends email address and when they\n   add credits you will get 20 credits on us!",
            style: TextStyle(fontSize: 16.0),),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.0),
              width: 320,
              height: 60,
              child: Text("Enter your Email", style: TextStyle(fontSize: 16.0),),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            )
          ],
        ),

        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.shade200,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(color: Colors.white60)),
      );

  Container _gridcont() => Container(
        height: 800,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: names.length,
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 30,
              childAspectRatio: 1,
              mainAxisExtent: 240,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 20.0),
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(color: Colors.white60)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          image: DecorationImage(
                              image: NetworkImage(pics[index]),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 15.0, bottom: 10.0, left: 10.0),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        names[index],
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: const [
                              Icon(
                                Icons.star_border_outlined,
                                size: 20.0,
                                color: Colors.yellowAccent,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                size: 20.0,
                                color: Colors.yellowAccent,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                size: 20.0,
                                color: Colors.yellowAccent,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                size: 20.0,
                                color: Colors.yellowAccent,
                              ),
                            ],
                          )),
                          Text(rates[index]),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      );

  Container _lastcont() => Container(
        margin:
            EdgeInsets.only(top: 30.0, left: 20.0, bottom: 20.0, right: 20.0),
        height: 460,
        child: Column(
          children: [
            Container(
              width: 280,
              height: 13,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0))),
            ),
            Container(
              width: 310,
              height: 16,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0))),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top:30.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJvaWxlZCUyMGVnZyUyMG1lYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    "  Browse categories\nyou are interested in",
                    style:
                        TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),

                  Container(
                    child:
                      Column(
                        children: [
                          Container(
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                CircleAvatar(radius: 5.0, backgroundColor: Colors.white),
                                CircleAvatar(radius: 5.0, backgroundColor: Colors.blue),
                                CircleAvatar(radius: 5.0, backgroundColor: Colors.white),
                                CircleAvatar(radius: 5.0, backgroundColor: Colors.white),
                                CircleAvatar(radius: 5.0, backgroundColor: Colors.white),
                                CircleAvatar(radius: 5.0, backgroundColor: Colors.white),
                              ],
                            ),
                          ),
                        Container(
                          width: 150,
                          // padding: EdgeInsets.symmetric(horizontal: 100.0),
                          height: 60,
                          margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Browse"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.indigo.shade400.withOpacity(0.7),
                                ),
                          ),
                        ),
                        ],
                      )

                      ),
                ]),
              ),
            )
          ],
        ),
      );
}
