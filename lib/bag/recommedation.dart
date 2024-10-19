import 'package:belglow/bag/choices.dart';
import 'package:flutter/material.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
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
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Get your ',
                          style: TextStyle(color: Color(0xFF2E1A47), fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'GLOW ',
                          style: TextStyle(color: Color(0xFFE1251B), fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'UP!',
                          style: TextStyle(color: Color(0xFFA90060), fontSize: 24, fontWeight: FontWeight.bold),
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
                      Container(width: 60, height: 5, color: Color(0xFF9B59B6)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Recommendations for you:', style: TextStyle(fontSize: 18), textAlign: TextAlign.start),
            SizedBox(height: 10),
            // Primera fila de tarjetas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Primer contenedor
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Card(
                      color: Color(0xFFF9D3D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/perfume2.png',
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Red Power éstika',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                _showProductDialog('Red Power éstika', 60.00);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                elevation: 0,
                                backgroundColor: Colors.black,
                              ),
                              child: Text('Order', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Segundo contenedor
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Card(
                      color: Color(0xFFF9D3D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/perfume2.png',
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Red Intense éstika',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                _showProductDialog('Red Intense éstika', 60.00);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                elevation: 0,
                                backgroundColor: Colors.black,
                              ),
                              child: Text('Order', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Segunda fila de tarjetas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tercer contenedor
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Card(
                      color: Color(0xFFF9D3D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/perfume2.png',
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Red Power éstika',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                _showProductDialog('Red Power éstika', 60.00);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                elevation: 0,
                                backgroundColor: Colors.black,
                              ),
                              child: Text('Order', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Cuarto contenedor
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Card(
                      color: Color(0xFFF9D3D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/perfume2.png',
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Red Intense éstika',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                _showProductDialog('Red Intense éstika', 60.00);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                elevation: 0,
                                backgroundColor: Colors.black,
                              ),
                              child: Text('Order', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60), // Espaciado antes del botón "Go to my bag"
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Choices()), // Navegar a la vista ChoicesView
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                ),
                child: Text('Go to my bag', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para mostrar el diálogo de producto
  void _showProductDialog(String productName, double productPrice) {
    // Inicializa la cantidad en 1
    int quantity = 1;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Botón de cerrar
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop(); // Cierra el diálogo
                    },
                  ),
                ),
                Image.asset(
                  'assets/perfume2.png', // Cambia por la imagen del producto
                  height: 80,
                ),
                SizedBox(height: 10),
                Text(
                  productName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('Price: S/ $productPrice', style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Text('Total: S/${(productPrice * quantity).toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        // Disminuir la cantidad, pero no menos de 1
                        if (quantity > 1) {
                          quantity--;
                        }
                        // Actualiza el estado del total
                        // Nota: Aquí se debe llamar a setState, pero dado que este es un diálogo,
                        // no podemos usar setState aquí. Así que simplemente usamos un Text y lo
                        // construimos de nuevo.
                        Navigator.of(context).pop(); // Cierra el diálogo
                        _showProductDialog(productName, productPrice); // Muestra el diálogo nuevamente con la cantidad actualizada
                      },
                    ),
                    Text('$quantity', style: TextStyle(fontSize: 16)), // Mostrar la cantidad
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        // Aumentar la cantidad
                        quantity++;
                        // Actualiza el estado del total
                        Navigator.of(context).pop(); // Cierra el diálogo
                        _showProductDialog(productName, productPrice); // Muestra el diálogo nuevamente con la cantidad actualizada
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Acción al pulsar el botón "Add to bag"
                    Navigator.of(context).pop(); // Cierra el diálogo
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Text('Add to bag', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}