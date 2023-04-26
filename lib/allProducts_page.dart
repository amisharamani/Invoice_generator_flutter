import 'package:flutter/material.dart';
import 'global_page.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('pdf_page');
            },
            icon: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Scrollbar(
        child: IndexedStack(
          index: res,
          children: [
            //Groceries
            ListView.builder(
              itemCount: Global.truck.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [

                          Colors.red.withOpacity(0.1),
                          Colors.red.withOpacity(0.1),

                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.truck[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.truck[i]['name']}'),
                        ],
                      ),

                      Text('${Global.truck[i]['price']} ₹'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.truck[i]['count'] <=
                                          1) {
                                        Global.truck[i]['count'] = 1;
                                      } else {
                                        Global.truck[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.truck[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.truck[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.truck[i]['bool'] == true) {
                                    Global.all_items.add(Global.truck[i]);
                                    Global.list_count++;
                                  }
                                  Global.truck[i]['bool'] = false;
                                });
                              },
                              child: Text('Book',style: TextStyle(
                                color: Colors.white
                              ),),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Clothes
            ListView.builder(
              itemCount: Global.car.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.withOpacity(0.1),
                          Colors.red.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.car[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.car[i]['name']}'),

                        ],
                      ),
                      Text('${Global.car[i]['price']} ₹'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.car[i]['count'] <= 1) {
                                        Global.car[i]['count'] = 1;
                                      } else {
                                        Global.car[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.car[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.car[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.car[i]['bool'] == true) {
                                    Global.all_items.add(Global.car[i]);
                                    Global.list_count++;
                                  }
                                  Global.car[i]['bool'] = false;
                                });
                              },
                              child: Text('Book',style: TextStyle(
                                color: Colors.white,
                              ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Toys
            ListView.builder(
              itemCount: Global.flight.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.withOpacity(0.1),
                          Colors.red.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.flight[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.flight[i]['name']}'),
                        ],
                      ),
                      Text('${Global.flight[i]['price']} ₹'),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.flight[i]['count'] <= 1) {
                                        Global.flight[i]['count'] = 1;
                                      } else {
                                        Global.flight[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.flight[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.flight[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.flight[i]['bool'] == true) {
                                    Global.all_items.add(Global.flight[i]);
                                    Global.list_count++;
                                  }
                                  Global.flight[i]['bool'] = false;
                                });
                              },
                              child: Text('Book',style: TextStyle(
                                color: Colors.white,
                              ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Footwear
            ListView.builder(
              itemCount: Global.trian.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.withOpacity(0.1),
                          Colors.red.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.trian[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.trian[i]['name']}'),

                        ],
                      ),
                      Text('${Global.trian[i]['price']} ₹'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.trian[i]['count'] <=
                                          1) {
                                        Global.trian[i]['count'] = 1;
                                      } else {
                                        Global.trian[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.trian[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.trian[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.trian[i]['bool'] == true) {
                                    Global.all_items.add(Global.trian[i]);
                                    Global.list_count++;
                                  }
                                  Global.trian[i]['bool'] = false;
                                });
                              },
                              child: Text('Book',style: TextStyle(
                                color: Colors.white,
                              ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.event_note),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed('book');
          });
        },
      ),
    );
  }
}
