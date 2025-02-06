// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LostBookingsWidget extends StatelessWidget {
  final List<Map<String, String>> bookings = const [
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hyatt Place Phoenix / Downtown',
      'address': '150 W Adams St, Phoenix, AZ 85003',
      'price': '\$106/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hilton Garden Inn Phoenix North Happy Valley',
      'address': '1940 W Pinnacle Peak Rd, Phoenix, AZ 85027',
      'price': '\$200/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hyatt Place Tempe / Phoenix Airport',
      'address': '1413 W Rio Salado Pkwy, Tempe, AZ 85281',
      'price': '\$100/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Courtyard by Marriott Phoenix Downtown',
      'address': '132 S Central Ave, Phoenix, AZ 85004',
      'price': 'Flexible schedule',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Homewood Suites by Hilton Phoenix - Chandler',
      'address': '1221 South Spectrum Boulevard, Chandler, AZ 85286',
      'price': '\$120/night',
    },
    {
      'image':
          'https://media.istockphoto.com/id/536048545/photo/tropical-resort.jpg?s=612x612&w=0&k=20&c=TR9a_ToayikLVagrZlq8ebvZFRZx_WH25q9_9m884Jk=',
      'name': 'Hilton Garden Inn Phoenix Downtown',
      'address': '15 E Monroe St, Phoenix, AZ 85004',
      'price': '\$130/night',
    },
  ];

  const LostBookingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lost Bookings',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'From 01/01/2023 - 12/31/2023, you\'ve lost the most bookings to these properties.',
            style: TextStyle(color: Colors.grey[600]),
          ),
          SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              final booking = bookings[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        booking['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            booking['name']!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            booking['address']!,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      booking['price']!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
