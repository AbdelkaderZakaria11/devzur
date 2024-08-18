
import 'package:flutter/material.dart';

class FieldSearch extends StatelessWidget {
  const FieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Search for Furniture",
        prefixIcon: const Icon(
          Icons.search,
        ),
        suffixIcon: const SizedBox(
          width: 50,
          height: 50,
          child: Row(
            children: [
              VerticalDivider(
                endIndent: 10,
                indent: 10,
                color: Colors.black,
              ),
              Icon(Icons.filter_list_rounded),
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}
