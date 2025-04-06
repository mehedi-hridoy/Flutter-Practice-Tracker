import 'package:flutter/material.dart';

class Problem08 extends StatelessWidget {
  const Problem08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Problem 08',
            style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        backgroundColor: Colors.blueGrey[400],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Rolls Royce Drawer.jpg',
                  ), 
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(
                      0.6,
                    ), 
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Rolls Royce',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'MODELS',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),

            // Navigation Items
            _buildDrawerItem(context, 'Phantom', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModelDetailScreen('Phantom'),
                ),
              );
            }),

            _buildDrawerItem(context, 'Phantom Extended', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModelDetailScreen('Phantom Extended'),
                ),
              );
            }),

            _buildDrawerItem(context, 'Spectre', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModelDetailScreen('Spectre'),
                ),
              );
            }),

            _buildDrawerItem(context, 'Ghost Series II', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModelDetailScreen('Ghost Series II'),
                ),
              );
            }),

            _buildDrawerItem(context, 'Ghost Extended Series II', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          ModelDetailScreen('Ghost Extended Series II'),
                ),
              );
            }),

            _buildDrawerItem(context, 'Cullinan Series II', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModelDetailScreen('Cullinan Series II'),
                ),
              );
            }),

            _buildDrawerItem(context, 'Black Badge', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModelDetailScreen('Black Badge'),
                ),
              );
            }),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[700]),
              title: Text(
                'Configure',
                style: TextStyle(color: Colors.grey[700]),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfigureScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/Rolls-Royce 1.jpg',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Text(
                      'Rolls-Royce',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Inspiring Greatness',
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Image.asset(
                  'assets/images/Rolls-Royce 2.jpg',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),

              Expanded(
                child: Image.asset(
                  'assets/images/Rolls-Royce3.jpg',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      title: Text(title, style: TextStyle(color: Colors.black)),
      onTap: onTap,
    );
  }
}

// Detail Screen for each Model
class ModelDetailScreen extends StatelessWidget {
  final String modelName;

  const ModelDetailScreen(this.modelName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(modelName), backgroundColor: Colors.brown[200]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              modelName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Detailed information about $modelName',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}

// Configure Screen
class ConfigureScreen extends StatelessWidget {
  const ConfigureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Configure'), backgroundColor: Colors.brown[200]),
      body: Center(
        child: Text(
          'Configuration Options',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
