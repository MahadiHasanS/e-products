import 'package:flutter/material.dart';
import 'package:flutter_application_1/items.dart';

class ItemWidget extends StatefulWidget {
  Item item;
  ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListTile(
          onTap: () {},
          leading: Image.network(widget.item.itemImage),
          title: Text(widget.item.itemName),
          subtitle: Text(widget.item.itemDesc),
          trailing: Text(
            '\$${widget.item.itemPrice}',
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}
