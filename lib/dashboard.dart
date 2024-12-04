import 'package:flutter/material.dart';
import 'barang.dart';
import 'supplier.dart';
import 'pembelian.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildDashboardTile(
              context,
              icon: Icons.inventory,
              label: 'Barang',
              destination: BarangScreen(),
            ),
            const SizedBox(height: 15),
            _buildDashboardTile(
              context,
              icon: Icons.local_shipping,
              label: 'Supplier',
              destination: SupplierScreen(),
            ),
            const SizedBox(height: 15),
            _buildDashboardTile(
              context,
              icon: Icons.shopping_cart,
              label: 'Pembelian',
              destination: PembelianScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardTile(BuildContext context, {required IconData icon, required String label, required Widget destination}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.1),
      child: ListTile(
        leading: Icon(icon, size: 50, color: Colors.blue[600]),
        title: Text(label, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}