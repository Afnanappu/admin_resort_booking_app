import 'package:flutter/material.dart';

class ListItemForAddOptions extends StatelessWidget {
  const ListItemForAddOptions({
    super.key,
    required this.item,
  });
  final Map<String, dynamic> item;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        leading: item['imageUrl'] != ''
            ? Image.network(item['imageUrl']!,
                width: 50, height: 50, fit: BoxFit.cover)
            : Icon(Icons.image, size: 50, color: Colors.orange.shade500),
        title: Text(
          item['name']!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            // Optionally show a confirmation dialog before deleting
            print('Delete ${item['name']}');
          },
        ),
        onTap: () {
          // Handle item tap if needed
        },
      ),
    );
  }
}
