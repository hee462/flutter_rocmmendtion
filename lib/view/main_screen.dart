import 'package:flutter/material.dart';
import '../model/menu.dart';
import '../view_model/menu_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final LunchMenuViewModel _viewModel = LunchMenuViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            '점메추',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  '🍴',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const Text(
              '원하는 메뉴를 선택해주세요',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    List<MenuCategory> categories = [
                      MenuCategory.KOREAN,
                      MenuCategory.CHINESE,
                      MenuCategory.JAPANESE,
                      MenuCategory.WESTERN
                    ];
                    List<String> emojis = ['🍚', '🍜', '🍣', '🍔'];

                    return GestureDetector(
                      onTap: () {
                        Menu selectedMenu;
                        switch (index) {
                          case 0:
                            selectedMenu = _viewModel.getKoreanMenu();
                            break;
                          case 1:
                            selectedMenu = _viewModel.getChineseMenu();
                            break;
                          case 2:
                            selectedMenu = _viewModel.getJapaneseMenu();
                            break;
                          case 3:
                            selectedMenu = _viewModel.getWesternMenu();
                            break;
                          default:
                            selectedMenu = _viewModel.getKoreanMenu();
                            break;
                        }
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Text(
                                  '🍴오늘 점심은 🍴',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              content: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  selectedMenu.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              // contentPadding: EdgeInsets.fromLTRB(24, 40, 24, 40),
                            );
                          },
                        );
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                emojis[index],
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                categories[index].toString().split('.')[1],
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.casino_outlined),
            label: 'Random',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Menu randomMenu = _viewModel.getRandomMenu();
            _showSelectedMenu(randomMenu);
          }
        },
      ),
    );
  }

  void _showSelectedMenu(Menu menu) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              '🍴오늘 점심은 🍴',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              menu.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
