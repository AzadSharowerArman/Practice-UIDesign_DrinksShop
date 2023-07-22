import 'package:flutter/material.dart';
import 'package:ui_design_practise/controller/homepage_controller.dart';
import 'package:ui_design_practise/wine_shop/screens/product_details.dart';
import 'package:ui_design_practise/wine_shop/wine_data.dart';
import 'package:get/get.dart';

class WineHomePage extends StatelessWidget {
  const WineHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.put(HomePageController());
    var allData = WineData.WineInfo();
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  size: 50,
                ),
                Icon(
                  Icons.comment_bank,
                  size: 50,
                ),
                Icon(
                  Icons.home,
                  size: 50,
                ),
                Icon(
                  Icons.home,
                  size: 50,
                ),
              ],
            ),
          ),
          Positioned(
              top: 0,
              left: 180,
              child: Icon(
                Icons.gavel_rounded,
                size: 50,
              )),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(
              Icons.compare_arrows,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          GetBuilder<HomePageController>(builder: (c) {
            return homePageController.cartList.length == 0
                ? Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${homePageController.cartList.length}",
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ),
                  );
          }),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.filter_list_sharp,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "'ARP",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Personal wine \nselector",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            mainAxisExtent: 300,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: allData.length,
                    itemBuilder: ((context, index) => GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                      productImg: allData[index].productImg,
                                      productName: allData[index].productName,
                                      color: allData[index].color,
                                      country: allData[index].country,
                                      price: allData[index].price,
                                      description:
                                          allData[index].description))),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(allData[index].productImg),
                                  Text(
                                    allData[index].productName,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "${allData[index].color} , ${allData[index].country}",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "${allData[index].price} €",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            homePageController.AddtoCart(
                                                allData[index]);
                                          },
                                          child: Icon(Icons.shopping_basket))
                                    ],
                                  )
                                ]),
                          ),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
