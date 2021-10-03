import 'package:flutter/material.dart';

class CatagoryDetail extends StatefulWidget {
  final String imglink;
  final Object tag;
  final Color bgcolor;
  final Color txtcolor;
  CatagoryDetail(
      {required this.tag,
      required this.imglink,
      required this.bgcolor,
      required this.txtcolor});
  @override
  _CatagoryDetailState createState() => _CatagoryDetailState();
}

class _CatagoryDetailState extends State<CatagoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: widget.tag,
                child:
                    Image.asset(widget.imglink, fit: BoxFit.fill, height: 600),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet luctus venenatis lectus. Feugiat vivamus at augue eget arcu. Faucibus ornare suspendisse sed nisi lacus. Tincidunt tortor aliquam nulla facilisi cras. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Quam quisque id diam vel quam elementum pulvinar. Turpis nunc eget lorem dolor sed. Diam in arcu cursus euismod quis viverra. Mi proin sed libero enim sed. Consectetur a erat nam at. Arcu cursus euismod quis viverra nibh cras pulvinar mattis.\nImperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor. Hac habitasse platea dictumst quisque sagittis purus. Hendrerit dolor magna eget est lorem. Sed euismod nisi porta lorem mollis aliquam ut. Amet risus nullam eget felis eget. Est placerat in egestas erat imperdiet sed. Cursus sit amet dictum sit amet justo donec. Pharetra et ultrices neque ornare aenean euismod elementum nisi quis. Nec feugiat in fermentum posuere urna nec. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. Consectetur libero id faucibus nisl tincidunt eget nullam non. Ornare aenean euismod elementum nisi quis eleifend. Habitant morbi tristique senectus et netus et malesuada fames. Vestibulum sed arcu non odio euismod. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. At elementum eu facilisis sed odio morbi. Sed turpis tincidunt id aliquet risus feugiat.\nFaucibus interdum posuere lorem ipsum dolor sit amet consectetur. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Hendrerit dolor magna eget est lorem. Purus in mollis nunc sed id semper. Ipsum dolor sit amet consectetur adipiscing elit ut. Feugiat vivamus at augue eget. Bibendum arcu vitae elementum curabitur vitae nunc. Arcu bibendum at varius vel pharetra vel turpis nunc. Blandit cursus risus at ultrices mi tempus imperdiet nulla. Eleifend donec pretium vulputate sapien. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Tristique magna sit amet purus. Metus aliquam eleifend mi in nulla posuere sollicitudin. Eu mi bibendum neque egestas congue quisque. Nunc sed id semper risus in hendrerit gravida.\nId leo in vitae turpis. Blandit libero volutpat sed cras ornare arcu. Risus sed vulputate odio ut enim blandit. Ut pharetra sit amet aliquam id diam. Tempor commodo ullamcorper a lacus. Feugiat sed lectus vestibulum mattis ullamcorper velit sed. Gravida neque convallis a cras. Aliquam sem fringilla ut morbi tincidunt. Purus in massa tempor nec feugiat. Turpis egestas maecenas pharetra convallis posuere morbi leo urna. Cras sed felis eget velit. Eu turpis egestas pretium aenean pharetra magna. Orci phasellus egestas tellus rutrum tellus pellentesque eu. In hendrerit gravida rutrum quisque non. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Hac habitasse platea dictumst quisque sagittis purus. Enim ut tellus elementum sagittis vitae et leo duis ut. Proin nibh nisl condimentum id venenatis a. Non odio euismod lacinia at quis risus sed vulputate.\nPlacerat vestibulum lectus mauris ultrices eros in. Sed viverra tellus in hac habitasse platea. Enim facilisis gravida neque convallis. Ultricies leo integer malesuada nunc vel risus commodo. Porttitor rhoncus dolor purus non enim praesent elementum facilisis leo. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Sem viverra aliquet eget sit amet tellus cras adipiscing enim. Etiam sit amet nisl purus in. Amet risus nullam eget felis eget nunc lobortis. Velit egestas dui id ornare arcu odio ut sem nulla. Nunc mi ipsum faucibus vitae aliquet. Sed viverra ipsum nunc aliquet bibendum enim facilisis gravida. Egestas purus viverra accumsan in nisl.',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: widget.txtcolor)),
              )
            ],
          ),
        ));
  }
}
