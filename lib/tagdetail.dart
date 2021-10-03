import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streamingapp/catagorydetail.dart';

class TagDetail extends StatelessWidget {
  final String title;
  final Color titlecolor;
  TagDetail({required this.title, required this.titlecolor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon:
                        const Icon(Icons.arrow_back_ios_new_rounded, size: 35)),
                Row(
                  children: [
                    Icon(Icons.search, size: 35),
                    Icon(Icons.more_vert_outlined, size: 35)
                  ],
                ),
              ],
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 65, horizontal: 45),
                alignment: Alignment.center,
                child: Text(title,
                    style: TextStyle(
                        fontSize: CupertinoTheme.of(context)
                                .textTheme
                                .navLargeTitleTextStyle
                                .fontSize! *
                            1.3,
                        fontWeight: CupertinoTheme.of(context)
                            .textTheme
                            .navLargeTitleTextStyle
                            .fontWeight,
                        color: titlecolor))),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text('Top',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.white))),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text('Channels',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.black))),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text('Catagories',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.black))),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text('Videos',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.black))),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text('PogChamp',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.black))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 15, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline5!.fontSize,
                        color: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .color),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  channelCard(
                      context, 'assets/1gpic.jpg', 'summit1g', '2M Followers'),
                  channelCard(context, 'assets/loganpaul.png', 'Logan Paul',
                      '1.5M Followers'),
                  channelCard(context, 'assets/keemstar.jpg', 'KEEMSTAR',
                      '240K Followers'),
                  channelCard(
                      context, 'assets/ninja.jpg', 'Ninja', '1M Followers'),
                ])),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 15, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Catagories',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline5!.fontSize,
                        color: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .color),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            topCatagoriesContext(context),
          ],
        ),
      ),
    ));
  }

  Widget channelCard(context, img, streamername, followercount) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(32))),
        child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(img),
                      ))),
              Text(streamername, style: Theme.of(context).textTheme.subtitle1),
              Text(followercount, style: Theme.of(context).textTheme.subtitle2),
            ])));
  }

  Widget topCatagoriesContext(context) {
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
