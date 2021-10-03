import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streamingapp/catagorydetail.dart';
import 'package:streamingapp/tagdetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: ListView(children: [
        menuIcons(),
        esportsText(),
        tagsMenu(),
        smallerText('Live Matches'),
        liveMatchesContext(),
        smallerText('Top Catagories'),
        topCatagoriesContext(),
        smallerText('Live Videos'),
        liveVideosContext()
      ]),
    );
  }

  Widget esportsText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15, left: 30),
      child: Text(
        'Esports',
        style: TextStyle(
          fontSize: (Platform.isIOS || Platform.isMacOS)
              ? CupertinoTheme.of(context)
                  .textTheme
                  .navLargeTitleTextStyle
                  .fontSize
              : Theme.of(context).primaryTextTheme.headline4!.fontSize,
          fontWeight: (Platform.isIOS || Platform.isMacOS)
              ? CupertinoTheme.of(context)
                  .textTheme
                  .navLargeTitleTextStyle
                  .fontWeight
              : Theme.of(context).primaryTextTheme.headline4!.fontWeight,
          color: (Platform.isIOS || Platform.isMacOS)
              ? CupertinoTheme.of(context).textTheme.textStyle.color
              : Theme.of(context).textTheme.subtitle2!.color,
        ),
      ),
    );
  }

  Widget smallerText(title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15, left: 30),
      child: Text(
        title,
        style: TextStyle(
            fontSize: Theme.of(context).textTheme.headline5!.fontSize,
            color: CupertinoTheme.of(context).textTheme.textStyle.color),
      ),
    );
  }

  Widget menuIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 45,
          width: 45,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.purpleAccent[700],
              borderRadius: const BorderRadius.all(Radius.circular(32))),
          child: const Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              children: [
                const Icon(Icons.notifications, size: 35),
                const Icon(Icons.search_rounded, size: 35)
              ],
            ))
      ],
    );
  }

  Widget tagsMenu() {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TagDetail(
                            title: '# Action', titlecolor: Colors.orange)));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text('# Action',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.orange))),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TagDetail(
                            title: '# Platformer', titlecolor: Colors.purple)));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Text('# Platformer',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.purple)),
                ),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TagDetail(
                            title: '# Driving', titlecolor: Colors.green)));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Text('# Driving',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.green)),
                ),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TagDetail(
                            title: '# Shooter', titlecolor: Colors.red)));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Text('# Shooter',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.red)),
                ),
              ))
        ]));
  }

  Widget liveVideosContext() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 25),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 180,
                width: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/summit1g.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                          title: Text('chillin\' - @summit1g',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                          subtitle: const Text('summit1g'),
                          trailing: Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: Text(
                                    'LIVE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .fontSize),
                                  )))),
                    ),
                  ),
                )),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 180,
                width: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/adinross.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                          title: Text('FREESTYLE W/ TONY LANEZ',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                          subtitle: const Text('Adin Ross'),
                          trailing: Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: Text(
                                    'LIVE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .fontSize),
                                  )))),
                    ),
                  ),
                )),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 180,
                width: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/valhalla.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                          title: Text('Valhalla Showcase',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                          subtitle: const Text('Ubisoft'),
                          trailing: Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: Text(
                                    'LIVE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .fontSize),
                                  )))),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget liveMatchesContext() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 25),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 180,
                width: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/eslone.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                          title: Text('ESL One - NiP vs Titan',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                          subtitle: const Text('ESL'),
                          trailing: Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: Text(
                                    'LIVE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .fontSize),
                                  )))),
                    ),
                  ),
                )),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 180,
                width: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/adinross.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                          title: Text('FREESTYLE W/ TONY LANEZ',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                          subtitle: const Text('Adin Ross'),
                          trailing: Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: Text(
                                    'LIVE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .fontSize),
                                  )))),
                    ),
                  ),
                )),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
                height: 180,
                width: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage('assets/valhalla.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 2, right: 2),
                      child: ListTile(
                          title: Text('Valhalla Showcase',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold)),
                          subtitle: const Text('Ubisoft'),
                          trailing: Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: Text(
                                    'LIVE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .fontSize),
                                  )))),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget topCatagoriesContext() {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Hero(
            tag: 'battlefield2042',
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CatagoryDetail(
                              tag: 'battlefield2042',
                              imglink: 'assets/battlefield2042.jpg',
                              bgcolor: Colors.teal,
                              txtcolor: Colors.white)));
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    child: Container(
                        height: 130,
                        width: 280,
                        child: Row(children: [
                          Container(
                              height: 130,
                              width: 90,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32),
                                    bottomLeft: Radius.circular(32)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/battlefield2042.jpg'),
                                    fit: BoxFit.cover),
                              )),
                          const SizedBox(width: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Battlefield 2042',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(8))),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5,
                                                        horizontal: 8),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(Icons.circle,
                                                          color: Colors.red),
                                                      const SizedBox(width: 5),
                                                      Text('1.2M',
                                                          style: TextStyle(
                                                              fontSize: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .subtitle1!
                                                                  .fontSize))
                                                    ]))),
                                        const SizedBox(width: 15),
                                        Text('# Shooter',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(color: Colors.red))
                                      ]),
                                      const SizedBox(height: 5),
                                      Text('187K Followers',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(color: Colors.grey))
                                    ])
                              ])
                        ])))),
          ),
          Hero(
              tag: 'fallguys',
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CatagoryDetail(
                                tag: 'fallguys',
                                imglink: 'assets/fallguys.jpg',
                                bgcolor: Colors.purpleAccent,
                                txtcolor: Colors.white)));
                  },
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          height: 130,
                          width: 280,
                          child: Row(children: [
                            Container(
                                height: 130,
                                width: 90,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      bottomLeft: Radius.circular(32)),
                                  image: DecorationImage(
                                      image: AssetImage('assets/fallguys.jpg'),
                                      fit: BoxFit.cover),
                                )),
                            const SizedBox(width: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Fall Guys: Ultimate ..',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(8))),
                                              child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        const Icon(Icons.circle,
                                                            color: Colors.red),
                                                        const SizedBox(
                                                            width: 5),
                                                        Text('120K',
                                                            style: TextStyle(
                                                                fontSize: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .fontSize))
                                                      ]))),
                                          const SizedBox(width: 15),
                                          Text('# Action',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1!
                                                  .copyWith(
                                                      color: Colors.orange))
                                        ]),
                                        const SizedBox(height: 5),
                                        Text('55K Followers',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(color: Colors.grey))
                                      ])
                                ])
                          ]))))),
          Hero(
              tag: 'valhalla',
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CatagoryDetail(
                                tag: 'valhalla',
                                imglink: 'assets/valhallacover.jpg',
                                bgcolor: Colors.grey,
                                txtcolor: Colors.white)));
                  },
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          height: 130,
                          width: 280,
                          child: Row(children: [
                            Container(
                                height: 130,
                                width: 90,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(32),
                                      bottomLeft: Radius.circular(32)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/valhallacover.jpg'),
                                      fit: BoxFit.cover),
                                )),
                            const SizedBox(width: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Assassin\'s Creed ..',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(8))),
                                              child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 5,
                                                      horizontal: 8),
                                                  child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        const Icon(Icons.circle,
                                                            color: Colors.red),
                                                        const SizedBox(
                                                            width: 5),
                                                        Text('20K',
                                                            style: TextStyle(
                                                                fontSize: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .fontSize))
                                                      ]))),
                                          const SizedBox(width: 15),
                                          Text('# Action',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1!
                                                  .copyWith(
                                                      color: Colors.orange))
                                        ]),
                                        const SizedBox(height: 5),
                                        Text('13K Followers',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(color: Colors.grey))
                                      ])
                                ])
                          ])))))
        ]));
  }
}
