import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1>
    with SingleTickerProviderStateMixin {
      Animation<double> sizeAnimation;
      AnimationController _controller;
      var animationCounter = 1.0;
      var animationCounterCoc = 1.0;
      var animationCounterCrab = 1.0;
      var animationCounterCastle = 1.0;
      var animationCounterIsland = 1.0;
      var animationCounterBoat = 1.0;
      var animationCounterUmb = 1.0;
      var animationCounterAirplane = 1.0;
      var animationCounterShell = 1.0;
      var animation;
      var cocanimation;
      var crabanimation;
      var castleanimation;
      var islandanimation;
      var umbanimation;
      var airplaneanimation;
      var boatanimation;
      var shellanimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 2,
        ));
  _controller.forward();

  sizeAnimation = Tween<double>(begin: 0, end: 200).animate(_controller);
  animation = CurvedAnimation(parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeOut);
  cocanimation = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
  crabanimation = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);
  castleanimation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
  islandanimation = CurvedAnimation(parent: _controller, curve: Curves.decelerate);
  umbanimation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
  boatanimation = CurvedAnimation(parent: _controller, curve: Curves.decelerate);
  airplaneanimation = CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic);
  shellanimation = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

  _controller.addListener(() {
        setState(() {
        animationCounter = animation.value;
        });

        setState(() {
          animationCounterCoc = cocanimation.value;
        });

        setState(() {
          animationCounterCrab = crabanimation.value;
        });

        setState(() {
          animationCounterCastle = castleanimation.value;
        });

        setState(() {
          animationCounterIsland = islandanimation.value;
        });

        setState(() {
          animationCounterUmb = umbanimation.value;
        });

        setState(() {
          animationCounterBoat = boatanimation.value;
        });

        setState(() {
          animationCounterAirplane = airplaneanimation.value;
        });

        setState(() {
          animationCounterShell = shellanimation.value;
        });
});

  _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
}

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
               margin: const EdgeInsets.all(1.0),
               width: double.infinity,
               height: double.infinity,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage('https://img.freepik.com/free-vector/cartoon-summer-beach-paradise-nature-vacation-ocean-sea-seashore-seaside-landscape-background-illustration_102902-1385.jpg?size=626&ext=jpg'),
                   fit: BoxFit.cover
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 50.0),
            child: Stack(
              children: <Widget> [
                    Padding(
                      padding: EdgeInsets.only(top: 150.0),
                      child: Container(
                       padding: EdgeInsets.only(left: 185.0),
                       width: 260.0 * airplaneanimation.value,
                       height: 200.0 * airplaneanimation.value,
                       child: Image.network('https://p.kindpng.com/picc/s/5-57377_cartoon-airplane-2png-amelia-earhart-plane-cartoon-transparent.png'),
                       ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130.0),
                      child: Container (
                        padding: EdgeInsets.only(right: 2.0),
                            width: 170.0 * animation.value,
                            height: 100.0 * animation.value,
                            child: Image.network('https://i.pinimg.com/originals/99/d7/2b/99d72b70bfad13ed4616b670b7d6de39.png'),
                            alignment: Alignment.topRight,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 500.0),
                      child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            width: 250.0 * cocanimation.value,
                            height: 200.0 * cocanimation.value,
                            child: Image.network('https://cdn.pixabay.com/photo/2018/06/01/12/54/beach-3446367_960_720.png'),
                            alignment: Alignment.bottomLeft,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 500.0),
                      child: Container(
                          padding: EdgeInsets.only(left: 60.0),
                          width: 350.0 * crabanimation.value,
                          height: 290.0 * crabanimation.value,
                          child: Image.network('https://i.pinimg.com/originals/f7/fd/d1/f7fdd10ffbd88d9097b1815bede43ae2.png'),
                          alignment: Alignment.center,
                     ),
                   ),
                    Padding(
                      padding: EdgeInsets.only(top: 500.0),
                      child: Container(
                       padding: EdgeInsets.only(left: 180.0),
                            width: 500.0 * castleanimation.value,
                            height: 350.0 * castleanimation.value,
                            child: Image.asset("images/shells.png"),
                            alignment: Alignment.centerRight,
                     ),
                   ),
                    Padding(
                      padding: EdgeInsets.only(top: 155.0),
                      child: Container(
                       padding: EdgeInsets.only(left: 280.0),
                       width: 410.0 * islandanimation.value,
                       height: 460.0 * islandanimation.value,
                       child: Image.network('https://cdn.pixabay.com/photo/2014/04/02/10/46/sand-304525_960_720.png'),
                       ),
                   ),
                    Padding(
                      padding: EdgeInsets.only(top: 450.0),
                      child: Container(
                       padding: EdgeInsets.only(left: 5.0),
                       width: 200.0 * umbanimation.value,
                       height: 150.0 * umbanimation.value,
                       child: Image.network('https://www.pinclipart.com/picdir/big/556-5562367_guarda-sol-pool-party-png-clipart.png'),
                       ),
                   ),
                   Padding(
                      padding: EdgeInsets.only(top: 335.0),
                      child: Container(
                       padding: EdgeInsets.only(left: 50.0),
                       width: 120.0 * boatanimation.value,
                       height: 90.0 * boatanimation.value,
                       child: Image.network('https://www.pinclipart.com/picdir/big/563-5638326_dinghy-clipart.png'),
                       ),
                   ),
                   
              ]
            )
            ),
        ),
      ),
    );
  }
}