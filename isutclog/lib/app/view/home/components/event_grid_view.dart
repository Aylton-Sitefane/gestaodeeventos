import 'package:flutter/material.dart';

class EventGridView extends StatelessWidget {
  const EventGridView({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 180;
    return eventsOnScroll(crossAxisCount);
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: Center(
                child: Icon(Icons.image, size: 48, color: Colors.blue.shade300),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product ${index + 1}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${(index + 1) * 10}.99',
                  style: TextStyle(color: Colors.green.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

