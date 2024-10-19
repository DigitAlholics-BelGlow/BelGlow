import 'package:belglow/bag/recommedation.dart';
import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  final String initialMessage;

  const ChatScreen({Key? key, required this.initialMessage}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> _messages = [];
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final ChatBot _chatBot = ChatBot();

  @override
  void initState() {
    super.initState();
    if (widget.initialMessage.isNotEmpty) {
      _handleInitialMessage(widget.initialMessage);
    }
  }

  void _handleInitialMessage(String text) {
    _handleSubmitted(text);
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage userMessage = ChatMessage(message: text, isUser: true);

    setState(() {
      _messages.insert(0, userMessage);
    });

    if (text.trim().toLowerCase() == 'confirm') {
      _showLoadingDialog(context);

      // Simulate a delay for loading (e.g., fetching data)
      Future.delayed(Duration(seconds: 3), () {
        Navigator.push( context,
            MaterialPageRoute(
        builder: (context) => Recommendation(), // The new catalog screen
        ),
        );
      });
    } else {
      ChatMessage botMessage = ChatMessage(message: '', isUser: false);
      String botResponse = _chatBot.getResponse(text, botMessage);
      botMessage.message = botResponse;

      setState(() {
        _messages.insert(0, botMessage);
      });
    }
  }

  Widget _buildTextComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              focusNode: _focusNode,
              decoration: InputDecoration(
                hintText: 'Write your Message...',
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.white),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(ChatMessage message) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (message.images != null) _buildImages(message.images!),
          Row(
            mainAxisAlignment: message.isUser
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: message.isUser
                ? _userMessageLayout(message)
                : _botMessageLayout(message),
          ),
        ],
      ),
    );
  }

  Widget _buildImages(List<String> images) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: 100.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _userMessageLayout(ChatMessage message) {
    return <Widget>[
      Flexible(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.only(
              left: 50.0, bottom: 5.0), // Espacio inferior
          decoration: BoxDecoration(
            color: Colors.white, // Fondo blanco
            border: Border.all(
              color: const Color(0xFFE1251B), // Borde color E1251B
              width: 1.5, // Borde más delgado
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0), // Redondeado
              topRight: Radius.circular(20.0), // Redondeado
              bottomLeft: Radius.circular(20.0), // Redondeado
              bottomRight: Radius.circular(0.0), // Esquina recta
            ),
          ),
          child: Text(
            message.message,
            style: const TextStyle(color: Colors.black87, fontSize: 16.0),
          ),
        ),
      ),
      const SizedBox(width: 8.0),
      const CircleAvatar(
        backgroundColor: Color(0xFFE1251B), // Fondo E1251B
        child: Text(
          'You',
          style: TextStyle(
            color: Colors.white, // Letras blancas
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];
  }

  List<Widget> _botMessageLayout(ChatMessage message) {
    return <Widget>[
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white, // Fondo blanco
          border: Border.all(
            color: Colors.black, // Bordes de color negro
            width: 2.0,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white, // Fondo interno blanco también
          child: Image.asset(
            'assets/belglow_logo.png',
            fit: BoxFit.contain,
            width: 24,
            height: 24,
          ),
        ),
      ),
      SizedBox(width: 8.0),
      Flexible(
        child: Container(
          padding: const EdgeInsets.fromLTRB(
              12.0, 12.0, 12.0, 5.0), // Agrega padding bottom de 5
          margin: const EdgeInsets.only(right: 50.0),
          decoration: BoxDecoration(
            color: Colors.white, // Fondo blanco
            border: Border.all(
              color: Colors.black, // Bordes del contenedor de mensaje
              width: 1.0, // Más delgado que los bordes del logo
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                  20.0), // Esquina superior izquierda puntiaguda
              topRight:
              Radius.circular(20.0), // Esquina superior derecha puntiaguda
              bottomRight:
              Radius.circular(20.0), // Esquina inferior derecha puntiaguda
              bottomLeft:
              Radius.circular(0.0), // Esquina inferior izquierda recta
            ),
          ),
          child: Text(
            message.message,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          // Encabezado con un tamaño fijo
          SizedBox(
            height: 180, // Fija el tamaño del encabezado
            child: _buildHeader(),
          ),
          // Divider para separar visualmente el header del contenido
          Divider(height: 1.0),

          // Expand el contenido para ocupar todo el espacio restante
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _buildMessage(_messages[index]),
              itemCount: _messages.length,
            ),
          ),
          // Divider entre la lista de mensajes y el input de texto
          Divider(height: 1.0),

          // Compositor de texto (input)
          _buildTextComposer(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        ClipPath(
          clipper: CurvedClipper(),
          child: Container(
            height: 140, // Aumentar la altura para dar más espacio
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
            height: 140, // Aumentar la altura para dar más espacio
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
        Positioned(
          top: 120, // Ajustar la posición
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Color para "Your"
                      ),
                    ),
                    TextSpan(
                      text: 'beauty ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDB3C58), // Color DB3C58 para "beauty"
                      ),
                    ),
                    TextSpan(
                      text: 'Your ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Color para "Your"
                      ),
                    ),
                    TextSpan(
                      text: 'Way',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA90060), // Color A90060 para "Way"
                      ),
                    ),
                  ],
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
            ],
          ),
        ),
      ],
    );
  }
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}