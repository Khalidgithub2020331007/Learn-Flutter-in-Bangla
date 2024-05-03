
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  // late TabController _tabController;

  @override
  void initState() {
    // _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Appbar Widget Example'),
            centerTitle: true,
            elevation: 30.0,
            shadowColor: Colors.amberAccent,
            // toolbarOpacity: .5,
            toolbarHeight: 64,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            leading: Icon(Icons.menu),
            actions: [
              Icon(Icons.favorite),
              IconButton(onPressed: (){print('Search');}, icon: Icon(Icons.search)),
              Icon(Icons.more_vert)
            ],
            bottom: TabBar(
              // controller: _tabController,
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(Icons.car_crash),
                  text: 'Car',
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag),
                  text: 'Shoping',
                ),
              ],
            ),
          ),
          body:TabBarView(
            // controller: _tabController,
            children: [
              Center(child: Text('Person')),
              Center(child: Text('Car')),
              Center(child: Text('Bag'))
            ],
          ),
            bottomNavigationBar: Material(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
              ),
              child: TabBar(


              // controller: _tabController,
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.white,
                      tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'Person',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.shopping_bag),
                text: 'Shoping',
              ),

                      ],
                    ),
            ),
        ),
      ),
    );
  }
}
