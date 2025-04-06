import 'package:flutter/material.dart';

class Problem09 extends StatelessWidget {
  const Problem09({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Problem 09')),
        backgroundColor: Colors.amber[100],
      ),
      body: const AnimatedCardListView(),
    );
  }
}

class AnimatedCardWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;

  const AnimatedCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  _AnimatedCardWidgetState createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCardWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        transform: Matrix4.identity()..scale(_isExpanded ? 1.05 : 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                widget.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              crossFadeState: _isExpanded 
                  ? CrossFadeState.showSecond 
                  : CrossFadeState.showFirst,
              firstChild: const SizedBox.shrink(),
              secondChild: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedCardListView extends StatelessWidget {
  const AnimatedCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AnimatedCardWidget(
          imageUrl: 'assets/images/ai.png',
          title: 'Artificial Intelligence',
          subtitle: 'Future of Technology',
          description: 'Artificial Intelligence is revolutionizing various industries by providing advanced computational capabilities, machine learning algorithms, and intelligent decision-making processes.',
        ),
        AnimatedCardWidget(
          imageUrl: 'assets/images/blockchain.jpg',
          title: 'Blockchain',
          subtitle: 'Decentralized Systems',
          description: 'Blockchain technology offers a secure, transparent, and decentralized method of recording transactions, with potential applications across finance, healthcare, and supply chain management.',
        ),
        AnimatedCardWidget(
          imageUrl: 'assets/images/iot.png',
          title: 'Internet of Things',
          subtitle: 'Connected Devices',
          description: 'IoT connects everyday devices to the internet, enabling smart homes, efficient industrial processes, and innovative solutions that improve quality of life and business operations.',
        ),
      ],
    );
  }
}