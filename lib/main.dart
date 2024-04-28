

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Painter',
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
          color: Colors.white
          ),
          title: Text('1390-16-9371',style: TextStyle(
            color: Colors.white
          )),
          
          backgroundColor: Colors.blue,

          centerTitle: true,
        ),
      body: Center(
        child: Container(
          
          width: 600,
          height: 600,
          color: Colors.white,
          child: CustomPaint(
            painter: MyLinePainter(),
            
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(left: 150, top: 450),
              width: 250,
              height: 250,
              child: Text(
                'JAIRO ANTONIO GREGORIO VASQUEZ',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            )
          ),
        ),
      ),
      )
    );
  }
}



class MyLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size){
    final paint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10
    ..strokeCap = StrokeCap.round;
    final paint2 = Paint()
    ..color = Colors.yellow
    ..style = PaintingStyle.fill;
    Path path = Path();
    final paint3 = Paint()
      ..color = Colors.blue
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
      final paint4 = Paint()
      ..color = Colors.orange
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
      final paint5 = Paint()
      ..color = Colors.orange
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
canvas.drawLine(
      Offset(size.width * 1 / 6, size.height * 0.22),
      Offset(size.width * 5 / 6, size.height * 0.22),
      paint,
    );  
    final a = Offset(size.width *0.55,size.height*0.02);
    final b = Offset(size.width*0.45,size.height*0.13);
    final rect = Rect.fromPoints(a, b);

    canvas.drawRect(rect, paint3);

  
    canvas.drawPath(path, paint);

    canvas.drawCircle(Offset(size.width*0.5, 170+50),size.height*0.1, paint2);
    canvas.drawCircle(Offset(size.width*0.5, 320+50),size.height*0.1, paint4);

    final c = Offset(size.width *0.55,size.height*0.75);
    final d = Offset(size.width*0.45,size.height*0.85);
    final cua = Rect.fromPoints(c, d);

    canvas.drawRect(cua, paint3);

    final arc1 = Path();
    arc1.moveTo(size.width * 0.15, size.height * 0.7);
    arc1.arcToPoint(
      Offset(size.width * 0.9, size.height * 0.7),
      radius: Radius.circular(240),
      clockwise: false,
      );
      canvas.drawPath(arc1, paint5);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

 }
 