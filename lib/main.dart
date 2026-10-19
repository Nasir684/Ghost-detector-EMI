import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() => runApp(GhostApp());

class GhostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghost Detector EMI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: GhostRadar(),
    );
  }
}

class GhostRadar extends StatefulWidget {
  @override
  _GhostRadarState createState() => _GhostRadarState();
}

class _GhostRadarState extends State<GhostRadar> with SingleTickerProviderStateMixin {
  double emf = 0;
  double baseline = 45;
  List<double> history = [];
  String status = "Scanning...";
  Color statusColor = Colors.green;
  bool entity = false;
  late AnimationController _controller;
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
    
    // Var-Rho Engine - EMI Detector Core
    _sub = magnetometerEvents.listen((MagnetometerEvent event) {
      double x = event.x, y = event.y, z = event.z;
      double mag = sqrt(x*x + y*y + z*z);
      
      setState(() {
        emf = mag;
        history.add(mag);
        if(history.length > 25) history.removeAt(0);
        
        // Var-Rho Logic
        double avg = history.reduce((a,b)=>a+b) / history.length;
        double variance = history.map((e) => pow(e-avg,2)).reduce((a,b)=>a+b) / history.length;
        
        if(history.length > 15 && mag > 65 && variance > 2.5) {
          status = "👻 ENTITY DETECTED! ${mag.toStringAsFixed(1)} µT";
          statusColor = Colors.red;
          entity = true;
        } else if(mag > 50) {
          status = "⚠️ Unusual Fluctuation";
          statusColor = Colors.orange;
          entity = false;
        } else {
          status = "✅ Area Safe - ${mag.toStringAsFixed(1)} µT";
          statusColor = Colors.green;
          entity = false;
        }
      });
    });
  }

  @override
  void dispose() {
    _sub?.cancel();
    _controller.dispose();
    super.dispose();
  }
