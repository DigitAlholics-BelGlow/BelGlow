import 'package:flutter/material.dart';

class PaymentSuccessfully extends StatefulWidget {
  const PaymentSuccessfully({super.key});

  @override
  State<PaymentSuccessfully> createState() => _PaymentSuccessfullyState();
}

class _PaymentSuccessfullyState extends State<PaymentSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fondo.png'), // Ruta de tu imagen
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono de verificación
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF9B59B6), Color(0xFFE1251B)], // Gradiente de color
                  ),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              SizedBox(height: 20), // Espacio entre el ícono y el texto
              Text(
                'Successfully payment!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E1A47),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
