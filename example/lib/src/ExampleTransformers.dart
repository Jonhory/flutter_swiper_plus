import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:flutter_swiper_plus/src/transformer_page_view/buildin_transformers.dart';

import '../view_util.dart';

class ExampleTransformers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ExampleState();
  }
}

class _ExampleState extends State<ExampleTransformers>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _animation10;
  late Animation<double> _animation11;
  late Animation<double> _animation12;
  late Animation<double> _animation13;

  _ExampleState();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  void initState() {
    controller = new AnimationController(vsync: this);
    _animation10 = new Tween(begin: 0.0, end: 1.0).animate(controller);
    _animation11 = new Tween(begin: 0.0, end: 1.0).animate(controller);
    _animation12 = new Tween(begin: 0.0, end: 1.0).animate(controller);
    _animation13 = new Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.animateTo(1.0, duration: new Duration(seconds: 3));
    super.initState();
  }

  Widget _buildDynamicCard() {
    return new Card(
      elevation: 2.0,
      color: Colors.white,
      child: new Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 40.0),
                        ),
                        new ScaleTransition(
                          scale: _animation10,
                          alignment: FractionalOffset.center,
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 160.0),
                        ),
                        new ScaleTransition(
                          scale: _animation11,
                          alignment: FractionalOffset.center,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(1.0),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 160.0),
                        ),
                        new ScaleTransition(
                          scale: _animation12,
                          alignment: FractionalOffset.center,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 40.0),
                        ),
                        new ScaleTransition(
                          scale: _animation13,
                          alignment: FractionalOffset.center,
                        ),
                      ],
                    ),
                  ]),
              Container(
                padding: const EdgeInsets.all(10.0),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> imageList = [
      Image.network(
        "https://www.wenjie.store/blog/img/%E9%99%88%EF%BC%88%E6%97%A0%E6%B0%B4%E5%8D%B0%EF%BC%89_1590654816239.jpg",
        fit: BoxFit.fill,
      ),
      Image.network(
        "https://www.wenjie.store/blog/img/75196331_p0_master1200_1582219984791.jpg",
        fit: BoxFit.fill,
      ),
      Image.network(
        "https://www.wenjie.store/blog/img/79579355_p0_master1200_1582253610670.jpg",
        fit: BoxFit.fill,
      )
    ];

    return new Container(
      color: Theme.of(context).primaryColorLight,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: new SliverChildBuilderDelegate((c, i) {
                return new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    // Default (not set transformer)
                    textWrap(text: "Default (not set transformer)", height: 30.0),
                    new SizedBox(
                      height: 200.0,
                      child: new Swiper(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return imageList[index];
                        },
                      )
                    ),

                    // Default (not set transformer)
                    textWrap(text: "AccordionTransformer", height: 30.0),
                    new SizedBox(
                        height: 200.0,
                        child: new Swiper(
                          transformer: AccordionTransformer(),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return imageList[index];
                          },
                        )
                    ),

                    // ThreeDTransformer
                    textWrap(text: "ThreeDTransformer", height: 30.0),
                    new SizedBox(
                        height: 200.0,
                        child: new Swiper(
                          transformer: ThreeDTransformer(),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return imageList[index];
                          },
                        )
                    ),

                    // ZoomInPageTransformer
                    textWrap(text: "ZoomInPageTransformer", height: 30.0),
                    new SizedBox(
                        height: 200.0,
                        child: new Swiper(
                          transformer: ZoomInPageTransformer(),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return imageList[index];
                          },
                        )
                    ),

                    // ZoomOutPageTransformer
                    textWrap(text: "ZoomOutPageTransformer", height: 30.0),
                    new SizedBox(
                        height: 200.0,
                        child: new Swiper(
                          transformer: ZoomOutPageTransformer(),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return imageList[index];
                          },
                        )
                    ),

                    // DepthPageTransformer
                    textWrap(text: "DepthPageTransformer", height: 30.0),
                    new SizedBox(
                        height: 200.0,
                        child: new Swiper(
                          transformer: DeepthPageTransformer(),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return imageList[index];
                          },
                        )
                    ),

                    // ScaleAndFadeTransformer
                    textWrap(text: "ScaleAndFadeTransformer", height: 30.0),
                    new SizedBox(
                        height: 200.0,
                        child: new Swiper(
                          transformer: ScaleAndFadeTransformer(fade: 0.3, scale: 0.1),
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return imageList[index];
                          },
                        )
                    ),

                  ],
                );
              }, childCount: 1)
          )
        ],
      ),
    );
  }
}
