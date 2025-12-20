import 'package:flutter/material.dart';

class AboutJustPage extends StatelessWidget {
  const AboutJustPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About just'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            
            Center(
              child: Image.asset(
                'images/just1.png', // Your logo image
                height: 100,
              ),
            ),
            const SizedBox(height: 15),

            const Text(
              'Jamhuriya University',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),

            const Text(
              'Home of quality education',
              style: TextStyle(
                fontFamily: 'Cursive',
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Jamhuriya University of Science and Technology (JUST) is private institution and was officially established in Mogadishu, Somalia, in 2011 by a group of Somali scholars and Intellectuals to fill the existing vacuum (in the quality) in the higher education system in Somalia by providing higher education of international standards.',
              style: TextStyle(fontSize: 15, height: 1.6),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // Prevent overflow
              children: [
                _buildIconButton(Icons.call),
                const SizedBox(width: 15),
                _buildIconButton(Icons.language),
                const SizedBox(width: 15),
                _buildImageButton('images/whatsapp.png', size: 24),
              ],
            ),
            const SizedBox(height: 30),

            // Go back button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF304FFE),
                padding:
                const EdgeInsets.symmetric(horizontal: 60, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Go back to app',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildIconButton(IconData icon, {double size = 24}) {
    return Container(
      padding: const EdgeInsets.all(8), // reduce padding to avoid overflow
      decoration: const BoxDecoration(
        color: Color(0xFF304FFE),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: size),
    );
  }


  static Widget _buildImageButton(String imagePath, {double size = 24}) {
    return Container(
      padding: const EdgeInsets.all(8), // reduce padding
      decoration: const BoxDecoration(
        color: Color(0xFF304FFE),
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        imagePath,
        width: 25,
        height: 25,
        fit: BoxFit.contain,
        color: Colors.white,
      ),
    );
  }
}
