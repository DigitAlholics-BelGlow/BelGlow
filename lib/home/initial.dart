import 'package:belglow/chatBot/chat_screen.dart';
import 'package:flutter/material.dart';

class Initial extends StatefulWidget {
  const Initial({
    super.key,
  });
  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [
              ClipPath(
                clipper: CurvedClipper(),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/perfumes.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: CurvedClipper(),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFFE1251B).withOpacity(0.6),
                        const Color(0xFF2E1A47).withOpacity(1),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 150),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.7),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 100,
                            backgroundImage: AssetImage('assets/belglow_logo.png'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Welcome! Let\'s talk',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(width: 50, height: 5, color: Color(0xFF2E1A47)),
                          const SizedBox(width: 10),
                          Container(width: 50, height: 5, color: Color(0xFFE1251B)),
                          const SizedBox(width: 10),
                          Container(width: 50, height: 5, color: Color(0xFFA90060)),
                        ],
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: 350,
                        child: TextField(
                          controller: _textController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFF736F71).withOpacity(0.22),
                            hintText: 'Describe your consultation',
                            hintStyle: const TextStyle(color: Color(0xFF8D8484)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: IconButton(
                                icon: const Icon(Icons.send),
                                color: Colors.black,
                                onPressed: () {
                                  String text = _textController.text;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChatScreen(initialMessage: text),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        'Get inspiration...',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 20, color: Color(0xFF8D8484)),
                      ),
                      const SizedBox(height: 40),
                      const ContinuousRotatingSquares(
                        frases: [
                          "Hi! I love the scent of vanilla and jasmine. Can you recommend a perfume with those notes?",
                          "I'm a big fan of citrusy and fresh scents. What perfume would you suggest for that?",
                          "I've been using Chanel No. 5 for years. Do you have any similar recommendations?",
                          "Can you help me find a perfume that's musky but still light and not too overpowering?",
                          "I prefer warm, woody fragrances, especially for the evening. What would you recommend?",
                        ],
                        initialOffset:
                        1.0, // Desplazamiento inicial en píxeles
                      ),
                      const SizedBox(height: 10),
                      const ContinuousRotatingSquares(
                        frases: [
                          "Hi! I love the scent of vanilla and jasmine. Can you recommend a perfume with those notes?",
                          "I'm a big fan of citrusy and fresh scents. What perfume would you suggest for that?",
                          "I've been using Chanel No. 5 for years. Do you have any similar recommendations?",
                          "Can you help me find a perfume that's musky but still light and not too overpowering?",
                          "I prefer warm, woody fragrances, especially for the evening. What would you recommend?",
                        ],
                        scrollDirection:
                        AxisDirection.left, // Dirección de desplazamiento
                      ),
                      const SizedBox(height: 10),
                      const ContinuousRotatingSquares(
                        frases: [
                          "Hi! I love the scent of vanilla and jasmine. Can you recommend a perfume with those notes?",
                          "I'm a big fan of citrusy and fresh scents. What perfume would you suggest for that?",
                          "I've been using Chanel No. 5 for years. Do you have any similar recommendations?",
                          "Can you help me find a perfume that's musky but still light and not too overpowering?",
                          "I prefer warm, woody fragrances, especially for the evening. What would you recommend?",
                        ],
                        initialOffset:
                        270.0, // Desplazamiento inicial en píxeles
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(-45, size.height * 0.2);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width + 40, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ContinuousRotatingSquares extends StatefulWidget {
  final List<String> frases;
  final double initialOffset; // Nuevo parámetro para el desplazamiento inicial
  final AxisDirection scrollDirection; // Nuevo parámetro para la dirección del desplazamiento

  const ContinuousRotatingSquares({
    Key? key,
    required this.frases,
    this.initialOffset = 0.0, // Valor predeterminado
    this.scrollDirection = AxisDirection.right, // Dirección predeterminada
  }) : super(key: key);

  @override
  _ContinuousRotatingSquaresState createState() =>
      _ContinuousRotatingSquaresState();
}

class _ContinuousRotatingSquaresState extends State<ContinuousRotatingSquares>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: widget.initialOffset);
    _animationController = AnimationController(
      duration: const Duration(minutes: 10), // Duración del movimiento
      vsync: this,
    )..repeat();

    _animationController.addListener(() {
      // Desplazamiento suave
      if (_scrollController.hasClients) {
        // Determinar la dirección de desplazamiento
        double increment = widget.scrollDirection == AxisDirection.left ? -0.5 : 0.5;

        // Hacer que la lista sea continua duplicando el contenido
        if (increment < 0 && _scrollController.offset <= 0) {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        } else if (increment > 0 && _scrollController.offset >= _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.jumpTo(_scrollController.offset + increment); // Incremento para suavizar el movimiento
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, // Altura de los cuadrados
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.frases.length * 2, // Para hacer la animación continua
        itemBuilder: (context, index) {
          final frase = widget.frases[index % widget.frases.length]; // Rotar frases
          return Padding(
            padding: const EdgeInsets.only(right: 20), // Separación entre cuadrados
            child: Container(
              width: 171, // Ancho de los cuadrados
              decoration: BoxDecoration(
                color: const Color(0xFFF9D3D1), // Color de fondo F9D3D1
                borderRadius: BorderRadius.circular(10), // Bordes redondeados
              ),
              child: Center(
                child: Text(
                  frase,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF292929)
                        .withOpacity(0.5), // Color 292929 con opacidad 0.2
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}