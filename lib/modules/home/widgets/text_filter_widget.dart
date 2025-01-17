import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/modules/home/stores/list_store.dart';

class TextFormFilterWidget extends StatelessWidget {
  const TextFormFilterWidget({super.key, required this.size, required this.listStore});

  final Size size;
  final ListStore listStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: size.width * 0.6,
              decoration: BoxDecoration(
                color: const Color(0xff2B2B2B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: listStore.controllerInput,
                style: GoogleFonts.poppins(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search for company or roles..",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.white30,
                    fontSize: 12,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          GestureDetector(
            onTap: () {
              listStore.setFilter(listStore.controllerInput.text);
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xff2B2B2B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.filter_alt,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
