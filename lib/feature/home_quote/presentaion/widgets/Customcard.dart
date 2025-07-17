import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final String content;
  final String author;

  const CustomCard({
    super.key,
    required this.content,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFE6E9F0), Color(0xFFF8F8F8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.format_quote, size: 40, color: Colors.grey[500]),
          const SizedBox(height: 12),
          Text(
            '"$content"',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              height: 1.6,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '- $author',
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }
}
