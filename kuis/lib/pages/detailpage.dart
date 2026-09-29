
import 'package:flutter/material.dart';
import '../models/culinaryModels.dart';

class DetailPage extends StatelessWidget {
  final Culinary _culinaryModel;

  const DetailPage({super.key, required this._culinaryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_culinaryModel.name),
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  _culinaryModel.imageUrl,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                _culinaryModel.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),


              Text(
                'Asal: ${_culinaryModel.origin}',
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 16),

              Text(
                'Informasi Makanan',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text('Kategori: ${_culinaryModel.category}'),
              Text('Bahan Utama: ${_culinaryModel.mainIngredient}'),
              Text('Rasa: ${_culinaryModel.flavor}'),
              Text('Tingkat Pedas: ${_culinaryModel.spicyLevel}'),
              Text('Waktu Menikmati: ${_culinaryModel.servingTime}'),

              const SizedBox(height: 20),

              const Text(
                'Deskripsi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                _culinaryModel.description,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 24),

              // Tombol kembali
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali ke Home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}