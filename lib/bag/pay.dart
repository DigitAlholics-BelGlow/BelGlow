import 'package:belglow/bag/payment_successfully.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Pay extends StatefulWidget {
  final String location;

  const Pay({super.key, required this.location});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  final String botToken = '7534055417:AAFSetqguPZSkQCf8n2yGu0j5vcEKN77sYU'; // El token del bot de Telegram
  final String chatId = '5857726013'; // El Chat ID del destinatario
  final String message = '¡Hola desde mi app Flutter! Este es un mensaje automático.';

  Future<void> sendMessage() async {
    final String fullName = _fullNameController.text;
    final String phoneNumber = _phoneNumberController.text;
    final String country = widget.location;
    // Message content with the client's details
    final String message = '''
    Hello Luis Pineda, a new client has reached out. Here are their details:

    - Name: $fullName
    - Phone: $phoneNumber
    - Country: $country
    - Product Selected: Red Power 4

    Please follow up with the client to assist them further.
    ''';

    final String url = 'https://api.telegram.org/bot$botToken/sendMessage';

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'chat_id': chatId,
        'text': message,
      }),
    );

    if (response.statusCode == 200) {
      print('Message sent successfully.');
    } else {
      print('Error sending message: ${response.body}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Stack(
          children: [
            // Imagen de fondo
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fondo.jpeg'), // Ruta de tu imagen
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Icono del carrito
            Positioned(
              right: 16,
              top: 16,
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Acción al pulsar el icono
                },
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label e Input para Full Name

            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Finish Your ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black, // Color del texto antes de "Order"
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Order',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFA90060), // Color A90060 para "Order"
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 5,
                  color: Color(0xFF2E1A47),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 5,
                  color: Color(0xFFE1251B),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 5,
                  color: Color(0xFFA90060),
                ),
              ],
            ),
            const SizedBox(height: 40),

            const Text('Full Name'),
            TextField(
              controller: _fullNameController,
              decoration: const InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Espaciador

            // Label e Input para Email Address
            const Text('Email Address'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Espaciador

            // Label e Input para Confirmation Email
            const Text('Confirmation Email'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Confirm your email address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Espaciador

            // Label e Inputs para Phone Number (código de país y número)
            const Text('Phone Number'),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Country Code',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                SizedBox(width: 8), // Espaciador entre los inputs
                Expanded(
                  flex: 5,
                  child: TextField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16), // Espaciador

            // Switch paƒra Visa o Mastercard
            const Text('Payment Method'),
            Center(
              child: Row(
                children: [
                  SizedBox(width: 160),
                  const Text('Visa'),
                  Switch(
                    value: true, // Cambia esto según la lógica que necesites
                    onChanged: (value) {
                      // Acción al cambiar el switch
                    },
                  ),
                  const Text('Mastercard'),
                ],
              ),
            ),
            const SizedBox(height: 16), // Espaciador

            // Label e Input para Card Number
            const Text('Card Number'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your card number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16), // Espaciador

            // Label e Input para Name of Card
            const Text('Name of Card'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter the name on the card',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Espaciador

            // Fila para CVV y Fecha de Expiración
            const Text('CVV & Expiration Date'),
            const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 8), // Espaciador entre los inputs
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'MM/YY',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30), // Espaciador entre los inputs

            // Botón de Pago
            Center(
              child: ElevatedButton(
                onPressed: () {
                  sendMessage();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        PaymentSuccessfully()), // Navegar a la vista ChoicesView
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo negro
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20), // Bordes redondeados
                  ),
                  padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 32),

                ),
                child: const Text(
                  'Pay',
                  style: TextStyle(
                      fontSize: 20, color: Colors.white), // Tamaño de la fuente
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


