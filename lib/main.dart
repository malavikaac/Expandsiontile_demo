import 'package:flutter/material.dart';
  
  void main() => runApp(const MyApp());
  
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        home: ExpansionTileControllerApp(),
        debugShowCheckedModeBanner: false,
      );
    }
  }
  

class ExpansionTileControllerApp extends StatefulWidget {
  const ExpansionTileControllerApp({super.key});

  @override
  State<ExpansionTileControllerApp> createState() =>
      _ExpansionTileControllerAppState();
}

class _ExpansionTileControllerAppState
    extends State<ExpansionTileControllerApp> {
  final ExpansionTileController personalInfoController = ExpansionTileController();
  final ExpansionTileController personalController = ExpansionTileController();
  final ExpansionTileController infoController = ExpansionTileController();


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ExpansionTileController Sample')),
        body: Column(
          children: <Widget>[
            // A controller has been provided to the ExpansionTile because it's
            // going to be accessed from a component that is not within the
            // tile's BuildContext.
            Theme(
              data: theme,
              child: ExpansionTile(
                        
                controller: personalInfoController,
                title: const Text('ExpansionTile with explicit controller.'),
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(24),
                 color: const Color.fromARGB(255, 249, 252, 249),
                    child: const Text('ExpansionTile Contents'),
                  ),
                ],
              ),
            ),              
            ExpansionTile(
              controller: personalController,
              title: const Text('ExpansionTile with explicit controller.'),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(24),
               color: const Color.fromARGB(255, 238, 255, 255),
                  child: const Text('ExpansionTile Contents'),
                ),
              ],
            ),      
            const SizedBox(height: 20,),        
            ExpansionTile(
              expandedAlignment: Alignment.bottomCenter,
              controller: infoController,
              title: const Text('ExpansionTile with explicit controller.'),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(24),
                  color: const Color.fromARGB(255, 238, 255, 255),
                  child: const Text('ExpansionTile Contents'),
                ),
              ],
            ),  
            const ExpansionTile(
        title: Text('Colors'),
        subtitle: Text('Expand this tile to see its contents'),
        // Contents
        children: [
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: Text('Blue')),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text('Red')),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              title: Text('Amber')),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text('Pink')),
          ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text('Green')),
        ],
      ),            
          ],
        ),
      ),
    );
  }
}
  
 