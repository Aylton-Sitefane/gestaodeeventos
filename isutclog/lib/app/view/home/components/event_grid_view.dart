import 'package:flutter/material.dart';
import 'package:isutclog/app/view/Details/detail_screen.dart';

class EventGridView extends StatelessWidget {
  final String title;
  const EventGridView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 180;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(title),
        //leading: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: eventsOnScroll(
        crossAxisCount,
      ),
    );
  }

  Scrollbar eventsOnScroll(int crossAxisCount) {
    return Scrollbar(
      child: GridView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return EventGridViewItem(index: index);
        },
      ),
    );
  }
}

class EventGridViewItem extends StatelessWidget {
  final int index;

  const EventGridViewItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                ),
                child: Center(
                  child:
                      Icon(Icons.image, size: 48, color: Colors.blue.shade300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Event ${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '10:40 - 14:30',
                        style: TextStyle(color: Colors.green.shade700),
                      ),
                      Spacer(),
                      Text(
                        'Maputo',
                        style: TextStyle(color: Colors.green.shade700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
