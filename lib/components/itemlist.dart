import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Row(
        children: [
          Image.network(
            "https://avatars.githubusercontent.com/u/7363458?v=4",
            width: 130,
            height: 150,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Vende-se uma saveiro nova",
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  const Text(
                    "R\$ 5.000,00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "23, Outubro 2022 Santarém, PA",
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
