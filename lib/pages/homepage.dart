import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF018197),
        title: const Image(
          width: 100,
          image: AssetImage("assets/images/amazon_logo.png"),
        ),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.mic),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              color: const Color(0xFF018197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.grey,
                        width: 2
                    )
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border: InputBorder.none,
                          icon: Icon(Icons.search,color: Color(0xFF018197),),
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),)
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 45,
                    color: Colors.blueGrey,
                    child: Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Detail to Uzbekistan, Republic of", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: const Center(
                            child: Text("We ship 45 million production", style: TextStyle(fontSize: 16),),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft:  Radius.circular(70),
                                  bottomLeft: Radius.circular(70),
                                ),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/image_1.jpeg"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  //sign
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Sign in for the best experience",
                          style:  TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        MaterialButton(onPressed:(){},
                          minWidth: double.infinity,
                          color: Colors.orange,
                          child: const Text("Sign in", style: TextStyle(fontSize: 18, color: Colors.white),),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: const Text("Create an account", style:  TextStyle(fontSize: 18),),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  //deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Deal of the Day", style: TextStyle(fontSize: 22),),
                        SizedBox(height: 16,),
                        Image(image: AssetImage("assets/images/item_7.jpeg"),
                          fit: BoxFit.cover,
                          height: 240,
                          width: double.infinity,
                        ),
                        SizedBox(height: 16,),
                        Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$70.99", style: TextStyle(fontSize: 17),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  //best
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Best sellers in electronics", style: TextStyle(fontSize: 22),),
                        const SizedBox(height: 16,),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.width,
                        // ),
                        Row(
                          children: [
                            Container(
                              child: Expanded(
                                child: Container(
                                  child: const Image(
                                    image: AssetImage("assets/images/item_7.jpeg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            const Expanded(
                              child: Image(
                                image: AssetImage("assets/images/item_5.jpeg"),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: const [
                            Expanded(
                              child: Image(
                                image: AssetImage("assets/images/item_6.jpeg"),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Image(
                                image: AssetImage("assets/images/item_4.jpeg"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  //Top
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Top product in Camera ", style: TextStyle(fontSize: 22),),
                    SizedBox(height: 16,),
                    Image(image: AssetImage("assets/images/item_7.jpeg"),
                      fit: BoxFit.cover,
                      height: 240,
                      width: double.infinity,
                    ),

                  ],
                ),

              ),
                  Row(
                    children: [
                      Container(
                        child: Expanded(
                          child: Container(
                            child: const Image(
                              image: AssetImage("assets/images/item_5.jpeg",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      const Expanded(
                        child: Image(
                          image: AssetImage("assets/images/item_6.jpeg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}