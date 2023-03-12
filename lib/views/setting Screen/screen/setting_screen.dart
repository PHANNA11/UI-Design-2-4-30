import 'package:first_ui/views/setting%20Screen/model/menu_icon_model.dart';
import 'package:first_ui/views/setting%20Screen/model/setting_model.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Center(
              child: Text(
                'User Setting',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Domine'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://imgs.search.brave.com/vgRfy5YBtwWxgIdxr9KCxFFbho5JVWhC0m_nOmHBUV8/rs:fit:860:900:1/g:ce/aHR0cHM6Ly93d3cu/a2luZHBuZy5jb20v/cGljYy9tLzQ5Ny00/OTczMDM4X3Byb2Zp/bGUtcGljdHVyZS1j/aXJjbGUtcG5nLXRy/YW5zcGFyZW50LXBu/Zy5wbmc'))),
                          ),
                          title: const Text('Mr. Dash'),
                          subtitle: const Text('Developer'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text('123'),
                                Text('665'),
                                Text('234'),
                                Text('664')
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('Hello'),
                              Text('Hello'),
                              Text('Hello'),
                              Text('Hello')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(listIcons.length,
                      (index) => menuIconWidget(listIcons[index])),
                ),
              ),
            ),
            Column(
              children: List.generate(listSetting.length,
                  (index) => settingCard(listSetting[index])),
            )
          ],
        ),
      ),
    );
  }

  Widget menuIconWidget(MenuIconModel menuIconModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: SizedBox(
        height: 120,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  child: Icon(
                    menuIconModel.icon,
                    size: 40,
                  ),
                )),
            Text(menuIconModel.iconName.toString())
          ],
        ),
      ),
    );
  }

  Widget settingCard(SettingModel settingModel) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, left: 4),
      child: Card(
        elevation: 0,
        child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 100,
            width: double.infinity,
            child: Center(
              child: ListTile(
                leading: SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundColor: settingModel.color,
                      child: Icon(
                        settingModel.icon,
                        size: 40,
                      ),
                    )),
                title: Text(settingModel.title.toString()),
                subtitle: Text(
                  settingModel.subtitle.toString(),
                ),
              ),
            )),
      ),
    );
  }
}
