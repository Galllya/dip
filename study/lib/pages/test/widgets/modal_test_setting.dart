import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/sourse/widget_style.dart';

class ModalTestSetting extends StatefulWidget {
  final Function onRefresh;

  const ModalTestSetting({
    Key? key,
    required this.onRefresh,
  }) : super(key: key);

  @override
  _ModalTestSettingState createState() => _ModalTestSettingState();
}

class _ModalTestSettingState extends State<ModalTestSetting> {
  @override
  void initState() {
    super.initState();
  }

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
                  widget.onRefresh();
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/icon_refresh.svg',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'начать сначала (рестарт)',
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              style: WidgetStyle().mainElevatedButtonStyle(),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                child: Text(
                  'Применить',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
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
