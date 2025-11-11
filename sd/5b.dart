//5b
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => GlobalCounter(),
    child: MaterialApp(home: CounterPage()),
  ),
);
class GlobalCounter with ChangeNotifier {
  int value = 0;
  void inc() { value++; notifyListeners(); }
  void dec() { value--; notifyListeners(); }
}
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
  int local = 0;
  @override
  Widget build(BuildContext context) {
    final global = context.watch<GlobalCounter>();
    return Scaffold(
      appBar: AppBar(title: Text("State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Local: $local", style: TextStyle(fontSize: 22)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () => setState(() => local--), icon: Icon(Icons.remove)),
                IconButton(onPressed: () => setState(() => local++), icon: Icon(Icons.add)),
              ],
            ),
            SizedBox(height: 20),
            Text("Global: ${global.value}", style: TextStyle(fontSize: 22)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: global.dec, icon: Icon(Icons.remove)),
                IconButton(onPressed: global.inc, icon: Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}