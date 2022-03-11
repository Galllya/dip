import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/blocs/accaunt/account_bloc.dart';
import 'package:study/pages/add_collection/view/add_collection_page.dart';
import 'package:study/pages/add_coloda.dart/view/add_coloda_page.dart';
import 'package:study/pages/collections/view/collections_page.dart';
import 'package:study/pages/colods/view/colods_page.dart';
import 'package:study/pages/home/bloc/home_bloc.dart';
import 'package:study/pages/home/widgets/title_slise.dart';
import 'package:study/ui/sourse/colors.dart';
import 'package:study/ui/widgets/container_collection.dart';
import 'package:study/ui/widgets/container_coloda.dart';
import 'package:study/ui/widgets/loading_custom.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
        builder: (BuildContext context, AccountState accountState) {
      return BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          return accountState.maybeWhen(orElse: () {
            return const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            );
          }, loaded: (user) {
            return state.maybeWhen(orElse: () {
              return const SizedBox();
            }, loading: () {
              return const LoadingCustom();
            }, error: (error) {
              return const Center(
                child: Text('Произошла ошибка'),
              );
            }, loaded: (colods, collections) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const SizedBox(
                    height: 26,
                  ),
                  const TitleSlise(
                    title: 'Колоды',
                    page: ColodsPage(),
                  ),
                  if (colods.isEmpty)
                    Column(
                      children: [
                        const Text(
                          'У вас пока нет колод',
                          style: TextStyle(fontSize: 16, color: primaryColor),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddColodaPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Создате первую',
                            style: TextStyle(
                              color: primaryColor,
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (colods.isNotEmpty)
                    ...colods.map((e) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ContainerColoda(
                            coloda: e,
                            fromHome: true,
                          ));
                    }),
                  const SizedBox(
                    height: 26,
                  ),
                  const TitleSlise(
                    title: 'Коллекции',
                    page: CollectionsPage(),
                  ),
                  if (collections.isEmpty && colods.isEmpty)
                    const Text(
                      'Без колод коллекцию не создать',
                      style: TextStyle(fontSize: 16, color: primaryColor),
                    ),
                  if (collections.isEmpty && colods.isNotEmpty)
                    Column(
                      children: [
                        const Text(
                          'У вас пока нет коллекций',
                          style: TextStyle(fontSize: 16, color: primaryColor),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddCollectionPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Создате первую',
                            style: TextStyle(
                              color: primaryColor,
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (collections.isNotEmpty)
                    ...collections.map((e) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ContainerCollection(
                            collection: e,
                            fromHome: true,
                          ));
                    }),
                ],
              );
            });
          });
        },
      );
    });
  }
}
