import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study/pages/colods/bloc/colods_bloc.dart';
import 'package:study/pages/colods/view/colods_view.dart';
import 'package:study/pages/colods/widgets/end_drawer_in_colods.dart';
import 'package:study/provider/coloda_provider.dart';

class ColodsPage extends StatefulWidget {
  const ColodsPage({Key? key}) : super(key: key);

  @override
  State<ColodsPage> createState() => _ColodsPageState();
}

class _ColodsPageState extends State<ColodsPage> {
  late ColodsBloc colodsBloc;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    colodsBloc = ColodsBloc(
      colodaProvider: context.read<ColodaProvider>(),
    )..add(
        ColodsEvent.started(0),
      );
  }

  @override
  void dispose() {
    colodsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColodsBloc>.value(
      value: colodsBloc,
      child: BlocBuilder<ColodsBloc, ColodsState>(
        builder: (BuildContext context, ColodsState state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Колоды'),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    colodsBloc.add(const ColodsEvent.changeShowString());
                  },
                  icon: state.maybeWhen(orElse: () {
                    return SvgPicture.asset(
                      'assets/icons/icon_search.svg',
                    );
                  }, loaded: (colods, shodShow, cardsFilter) {
                    return shodShow
                        ? SvgPicture.asset(
                            'assets/icons/icon_close.svg',
                            color: Colors.white,
                            height: 24,
                            width: 24,
                          )
                        : SvgPicture.asset(
                            'assets/icons/icon_search.svg',
                          );
                  }),
                ),
                Builder(
                  builder: (context) => IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/icon_filter.svg',
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                ),
              ],
            ),
            endDrawer: EndDrawerInColods(
              val: state.maybeWhen(orElse: () {
                return -1;
              }, loaded: (colods, searchString, val) {
                return val;
              }),
              onSelect: (int cardsFilter) {
                colodsBloc.add(
                  ColodsEvent.changeFilter(cardsFilter),
                );
              },
            ),
            body: ColodsView(
              onClose: () {
                colodsBloc.add(
                  ColodsEvent.started(
                    state.maybeWhen(orElse: () {
                      return 0;
                    }, loaded: (colods, searchString, val) {
                      return val;
                    }),
                  ),
                );
              },
              onSearch: (String searchString, bool isTagsSearch) {
                colodsBloc.add(
                  ColodsEvent.search(searchString, isTagsSearch),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
