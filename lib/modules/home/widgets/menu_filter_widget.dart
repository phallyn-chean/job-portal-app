import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/modules/home/stores/menu_store.dart';

class MenuFilterWidget extends StatelessWidget {
  const MenuFilterWidget({super.key, required this.menuStore});

  final MenuStore menuStore;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var item in menuStore.menus)
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    menuStore.changeSelectedMenu(item);
                  },
                  child: Observer(
                    builder: (context) {
                      return Container(
                        height: 43,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: menuStore.selectMenu == item ? const Color(0xff5424FD) : const Color(0xffD5D5D5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            item,
                            style: GoogleFonts.poppins(
                              color: menuStore.selectMenu == item ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 10,
                  width: 15,
                  color: Colors.grey,
                ),
              ],
            )
        ],
      ),
    );
  }
}
