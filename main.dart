import 'package:flutter/material.dart';

void main() => runApp(AntioquiaApp());

class AntioquiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String estado = "Listo para certificar";

  // Esta función simula la llamada a tu contrato AntioquiaCertify.sol
  void ejecutarCertificacion() {
    setState(() {
      estado = "Registrando en Blockchain... ⛓️";
    });
    
    // Aquí es donde en el futuro conectaremos con la dirección del contrato
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        estado = "✅ Lote Certificado Inmutablemente";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Antioquia Certifica')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.verified_user, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text(estado, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: ejecutarCertificacion, 
              child: Text('ESCANEAR Y CERTIFICAR LOTE'),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
