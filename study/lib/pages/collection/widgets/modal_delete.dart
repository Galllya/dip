import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/pages/colod/widgets/delete_dialog.dart';
import 'package:study/ui/sourse/colors.dart';

class ModalDelete extends StatefulWidget {
  final Function deleteColod;

  const ModalDelete({
    Key? key,
    required this.deleteColod,
  }) : super(key: key);

  @override
  _ModalDeleteState createState() => _ModalDeleteState();
}

class _ModalDeleteState extends State<ModalDelete> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset('assets/icons/icon_close.svg'),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DeliteDialog(
                          deleteColod: () {
                            widget.deleteColod();
                          },
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/icon_delete.svg',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'удалить коллекцию',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextStyle getStyle() {
  return const TextStyle(
    color: primaryColor,
    fontSize: 16,
  );
}
