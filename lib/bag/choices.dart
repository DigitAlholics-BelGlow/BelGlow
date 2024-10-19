import 'package:belglow/bag/pay.dart';
import 'package:flutter/material.dart';

class Choices extends StatefulWidget {
  const Choices({super.key});

  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  List<int> quantities = [1, 1, 1, 1];
  List<bool> selectedProducts = [false, false, false, false];
  final TextEditingController _locationController = TextEditingController();

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
            Positioned(
              right: 20,
              top: 4,
              child: IconButton(
                icon: Icon(
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
            // Título
            Center(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Confirm ',
                          style: TextStyle(
                              color: Color(0xFF2E1A47),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Your ',
                          style: TextStyle(
                              color: Color(0xFFE1251B),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Choices',
                          style: TextStyle(
                              color: Color(0xFFA90060),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 60, height: 5, color: Color(0xFF2E1A47)),
                      SizedBox(width: 20),
                      Container(width: 60, height: 5, color: Color(0xFFE1251B)),
                      SizedBox(width: 20),
                      Container(width: 60, height: 5, color: Color(0xFFA90060)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Campo de ubicación
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Your location',
                border: OutlineInputBorder(),
                hintText: 'Enter your location',
              ),
            ),
            SizedBox(height: 20),

            // Precio de entrega
            Text(
              'Delivery price: S/ 60.00',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Lista de productos
            Text(
              'Product list',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: quantities.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Checkbox(
                                value: selectedProducts[index],
                                onChanged: (value) {
                                  setState(() {
                                    selectedProducts[index] = value!; // Actualiza el estado del checkbox
                                  });
                                },
                              ),
                              // Imagen pequeña del producto
                              Image.asset(
                                'assets/perfume2.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Red Power éstika',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('S/ 60.00'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    if (quantities[index] > 1) {
                                      quantities[index]--;
                                    }
                                  });
                                },
                              ),
                              Text(quantities[index].toString()), // Muestra la cantidad actual
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    quantities[index]++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Total
            Text(
              'Grand total: S/ ${quantities.fold(0, (previousValue, element) => previousValue + (element * 60))}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Botón de confirmación
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pay(
                        location: _locationController.text,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 180),
                  backgroundColor: Colors.black, // Cambia el color de fondo aquí
                ),
                child: Text(
                  'CONFIRM',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}