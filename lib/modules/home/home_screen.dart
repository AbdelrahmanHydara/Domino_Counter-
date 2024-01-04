import 'package:flutter/material.dart';
import 'package:points/widgets/home_app_bar.dart';
import '../../widgets/custom_material_button.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {

  TextEditingController controllerLeft = TextEditingController();

  TextEditingController controllerRight = TextEditingController();

  String teamLeft = 'Team Left';

  String teamRight = 'Team Right';

  int currentLeft = 0;

  int currentRight = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const HomeAppBar(),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          [
            SizedBox(
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                [
                   Text(
                    teamLeft,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 34,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      controller: controllerLeft,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Enter Points",
                      ),
                    ),
                  ),
                  CustomMaterialButton(
                    onTap: ()
                    {
                      setState(() {
                        currentLeft += int.tryParse(controllerLeft.text)!;
                        controllerLeft.clear();
                      });
                      if(currentLeft >= 152)
                      {
                        showWinDialog(teamLeft);
                      }
                    },
                    text: 'Add Points',
                    color: Colors.teal,
                  ),
                  Column(
                    children:
                    [
                      Card(
                        elevation: 20,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            currentLeft.toString(),
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Total Points',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 600,
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1.5,
                indent: 40,
              ),
            ),
            SizedBox(
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                [
                  Text(
                    teamRight,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 34,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      controller: controllerRight,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Enter Points",

                      ),
                    ),
                  ),
                  CustomMaterialButton(
                    onTap: ()
                    {
                      setState(() {
                        currentRight += int.tryParse(controllerRight.text)!;
                        controllerRight.clear();
                      });
                      if(currentRight >= 152)
                      {
                        showWinDialog(teamRight);
                      }
                    },
                    text: 'Add Points',
                    color: Colors.deepPurple,
                  ),
                  Column(
                    children:
                    [
                      Card(
                        elevation: 20,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            currentRight.toString(),
                            style: const TextStyle(
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Total Points',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showWinDialog(String winner) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context)
        {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
             actions:
            [
              TextButton(
              onPressed: () {
               setState(() {
                 currentRight = 0;
                 currentLeft = 0;
                 Navigator.pop(context);
               });
              },
                child: const Text(
                'Play Again !',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
                ),
              ),
            ],
            title: Center(
              child: Text(
                "WINNER IS : $winner",
              ),
            ),
          );
        }
    );
  }
}
