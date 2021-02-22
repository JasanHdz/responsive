import 'package:flutter/material.dart';
import 'package:responsive/utils/responsive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        width: Responsive.screenWidthDevice,
        height: Responsive.screenHeightDevice,
        child: Column(
          children: [
            Container(
              width: Responsive().setWidth(350),
              height: Responsive().setHeight(350),
            ),
            Container(
              width: Responsive.screenWidth, 
              height: Responsive().setHeight(2),
              color: Colors.black, 
              child: Center(
                child: Text(
                  'Este ejemplo es de tamaño estatico 24px, esto indica que no cambiará', 
                  style: TextStyle(fontSize: Responsive().setSp(24))
                ),
              ),
            ),
            Container(
              width: Responsive().setWidth(300),
              height: Responsive().setHeight(350),
              color: Colors.green,
              child: Text(
                  'Texto dinámico esto indica que cambiará en otras pantallas', 
                  style: TextStyle(fontSize: Responsive(allowFontScaling: true).setSp(24))
                ),
            )
          ],
        ),
      )
    );
  }
}
