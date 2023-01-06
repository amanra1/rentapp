// ignore_for_file: file_names, prefer_const_constructors, unnecessary_nullable_for_final_variable_declarations, sized_box_for_whitespace, duplicate_ignore, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? notificationnumber;
  int? unreadnumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: true,
            title: Text(
              'Rent Monk',
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            leading: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  context: context,
                  builder: (ctx) => Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: bottom(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: 58,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
              ),
            ),
            actions: [
              notificationnumber != null
                  ? Stack(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.notifications_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        notificationnumber == 0
                            ? Container()
                            : Positioned(
                                child: Stack(
                                  children: <Widget>[
                                    Icon(Icons.brightness_1,
                                        size: 20.0, color: Colors.red[800]),
                                    notificationnumber! >= 10
                                        ? Positioned(
                                            top: 4.0,
                                            right: 3,
                                            child: Center(
                                                child: Text(
                                              '9+',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500),
                                            )),
                                          )
                                        : Positioned(
                                            top: 4.0,
                                            right: 5.5,
                                            child: Center(
                                              child: Text(
                                                '10',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 11.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                      ],
                    )
                  : IconButton(
                      icon: Icon(Icons.notifications_rounded),
                      onPressed: () {},
                    ),
              unreadnumber != null
                  ? Stack(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.chat_bubble_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        unreadnumber == 0
                            ? Container()
                            : Positioned(
                                child: Stack(
                                  children: <Widget>[
                                    Icon(Icons.brightness_1,
                                        size: 20.0, color: Colors.red[800]),
                                    unreadnumber! >= 10
                                        ? Positioned(
                                            top: 4.0,
                                            right: 2.5,
                                            child: Center(
                                                child: Text(
                                              '9+',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.0,
                                                  fontWeight: FontWeight.w500),
                                            )),
                                          )
                                        : Positioned(
                                            top: 4.0,
                                            right: 5.5,
                                            child: Center(
                                              child: Text(
                                                '10',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 11.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                      ],
                    )
                  : IconButton(
                      icon: Icon(Icons.chat_bubble_rounded),
                      onPressed: () {},
                    ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.deepPurple,
              automaticallyImplyLeading: false,
              title: Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: TextFormField(
                    readOnly: true,
                    onTap: () {},
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey.shade500,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        hintStyle: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                        hintText: "Search here ....."),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        icon: Icon(Icons.location_on_rounded),
                        label: Text('All'),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll<Color>(Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                ListView(
                    physics: const ClampingScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin:
                                EdgeInsets.only(top: 0, right: 20, left: 20),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  child: Image.network(
                                    'https://picsum.photos/200',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                ListTile(
                                  leading: GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.shade400,
                                      backgroundImage: NetworkImage(
                                          'https://picsum.photos/200'),
                                      radius: 30,
                                    ),
                                  ),
                                  title: Text('Name'),
                                  subtitle: Text(
                                    'username',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                            Icons.favorite_outline_outlined),
                                        iconSize: 30,
                                        color: Colors.redAccent,
                                        onPressed: () {},
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '10',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'desc',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                ),
                                ButtonBar(
                                  alignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton.icon(
                                      icon: Icon(Icons.currency_bitcoin),
                                      label: Text('1'),
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.black),
                                      ),
                                      onPressed: () {},
                                    ),
                                    TextButton.icon(
                                      icon: Icon(Icons.date_range_rounded),
                                      label: Text('Available for 10 days'),
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.black),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                ButtonBar(
                                  alignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton.icon(
                                      icon: Icon(Icons.chat_bubble_rounded),
                                      label: Text('Chat'),
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.green),
                                      ),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                            title: Text("Report"),
                                            content: Text(
                                                "Do you want to report this product"),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {},
                                                child: Text("Yes"),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                },
                                                child: Text("No"),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      child: const Icon(Icons.report),
                                      style: ButtonStyle(
                                        shape: MaterialStatePropertyAll<
                                            OutlinedBorder>(CircleBorder()),
                                        foregroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.redAccent),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ])
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottom() {
    return Container(
      child: SingleChildScrollView(
        child: ListView(
            physics: const ClampingScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  imagebottomsheet(),
                  Container(
                    child: Card(
                      margin: EdgeInsets.only(
                          top: 30, bottom: 0, left: 20, right: 20),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {},
                              child: ListTile(
                                leading: Icon(
                                  Icons.person_rounded,
                                  size: 40,
                                  color: Colors.blueGrey.shade400,
                                ),
                                title: Text(
                                  "My Profile",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    child: Divider(
                      color: Colors.grey.shade200,
                      thickness: 2,
                    ),
                  ),
                  Container(
                    child: Card(
                      margin: EdgeInsets.only(
                          top: 0, bottom: 0, left: 20, right: 20),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: ListTile(
                              leading: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.blueGrey.shade400,
                              ),
                              title: Text(
                                "Add",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    child: Divider(
                      color: Colors.grey.shade200,
                      thickness: 2,
                    ),
                  ),
                  Container(
                    child: Card(
                      margin: EdgeInsets.only(
                          top: 0, bottom: 0, left: 20, right: 20),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: ListTile(
                              leading: Icon(
                                Icons.help_center_rounded,
                                size: 40,
                                color: Colors.blueGrey.shade400,
                              ),
                              title: Text(
                                "Help & FAQ`s",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    child: Divider(
                      color: Colors.grey.shade200,
                      thickness: 2,
                    ),
                  ),
                  Container(
                    child: Card(
                      margin: EdgeInsets.only(right: 20, left: 20, bottom: 0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: ListTile(
                              leading: Icon(
                                Icons.info_outline_rounded,
                                size: 40,
                                color: Colors.blueGrey.shade400,
                              ),
                              title: Text(
                                "Terms & Conditions",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    child: Divider(
                      color: Colors.grey.shade200,
                      thickness: 2,
                    ),
                  ),
                  Container(
                    child: Card(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () async {},
                            child: ListTile(
                              leading: Icon(
                                Icons.logout_rounded,
                                size: 40,
                                color: Colors.blueGrey.shade400,
                              ),
                              title: Text(
                                "Log-Out",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }

  Widget imagebottomsheet() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey.shade300,
          backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        ),
      ),
    );
  }
}
