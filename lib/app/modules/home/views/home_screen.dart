import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/data/cart_item.dart';
import 'package:loyverse_pos_clone/app/data/product_data.dart';
import 'package:loyverse_pos_clone/app/modules/cart_tow.dart';

import 'package:loyverse_pos_clone/app/modules/home/views/drawer/items/items_page.dart';

import 'drawer/custom_darawer.dart';
import 'drawer/items/add_ticket.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var textstyle = const TextStyle(fontSize: 18, color: Colors.grey);

  final searchController = TextEditingController();
  List<Product> searchdata = productlist;
  List<Product> productfilterlist = [];

  List<Product> getproduct(String? type) {
    List<Product> value = [];
    if (type == null) {
      return searchdata;
    }
    searchdata.forEach((element) {
      if (element.name.toLowerCase() == type?.toLowerCase()) {
        value.add(element);
      }
    });
    return value;
  }

  List<Product> cart = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productfilterlist = getproduct(null);
  }

  @override
  Widget build(BuildContext context) {
    void searchfunction(String query) {
      final suggestions = productlist.where((data) {
        final productitle = data.name.toLowerCase();
        final input = query.toLowerCase();
        return productitle.contains(input);
      }).toList();
      setState(() {
        searchdata = suggestions;
      });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Row(
            children: [
              Text("Ticket "),
              Icon(Icons.check_box_outline_blank),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.to(() => const AddTicketPage());
              },
              child: const Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 80,
                color: Colors.green[400],
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'CHARGE',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "  ${producAddtList.length.toString()}",
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButton(
                        isExpanded: true,
                        underline: Container(
                          color: Colors.white,
                          height: 1,
                        ),
                        //value: dropdownValue,
                        hint: const Text(
                          "All items",
                        ),

                        icon: const Icon(Icons.arrow_drop_down),
                        onChanged: (val) {
                          print("dropdown==============");
                          setState(() {
                            productfilterlist = getproduct(val);
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                            value: "Barger",
                            child: Text("Barger"),
                          ),
                          DropdownMenuItem(
                            value: "Vegetable",
                            child: Text("Vegetable"),
                          ),
                          DropdownMenuItem(
                            value: "Fast Food",
                            child: Text("Frst Food"),
                          ),
                          DropdownMenuItem(
                            value: "Pizza",
                            child: Text("Pizza"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      color: Colors.black,
                      width: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   height: 200,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: searchController,
                onChanged: searchfunction,
              ),
            ),
            Expanded(
              flex: 1,
              child: productfilterlist.isNotEmpty
                  ? GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: productfilterlist.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (_, index) {
                        final product = productfilterlist[index];
                        // late String postion = index.toString();

                        final data = productfilterlist[index];
                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            //elevation: 10,
                            //height: 100,
                            // color: Colors.grey,
                            //width: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      data.image,
                                      height: 120,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 0),
                                    child: Text(
                                      productfilterlist[index].name,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${pricelist[index]} BDT",
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        // height: 30,
                                        // width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.green[700],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {
                                                print(searchdata.length);
                                                print("print product");
                                                producAddtList.add(data);
                                                //productlist.add(data);
                                                //addToCart(product);
                                                print(pricelist.length);
                                                print(productfilterlist.length);

                                                print(searchdata.length);
                                              },
                                              child: const Text(
                                                "add",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                  : emptybody(),
            ),

            Container(
              width: double.maxFinite,
              height: 50,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() => CartPagetow());
                          //  Get.to(() => CartPage());
                        },
                        child: const Text("Cart page")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List pricelist = [
    "100",
    "200",
    "350",
    "100",
    "200",
    "350",
    "100",
    "200",
    "350",
    "100",
    "200",
    "350",
  ];
}

Widget emptybody() {
  var textstyle = const TextStyle(fontSize: 18, color: Colors.grey);
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "You have no items yet",
        style: textstyle,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Go to items menu to add in item',
          style: textstyle.copyWith(fontSize: 16),
        ),
      ),
      InkWell(
        onTap: () {
          Get.to(() => const ItemsScreen());
        },
        child: Container(
          height: 50,
          width: 150,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text("GO TO ITEMS",
                  style: textstyle.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      )
    ],
  );
}
