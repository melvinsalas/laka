import 'package:device_apps/device_apps.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Aplicaciones'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Application> _apps;

  @override
  void initState() {
    DeviceApps.getInstalledApplications(onlyAppsWithLaunchIntent: true, includeSystemApps: false).then((apps) {
      setState(() {
        _apps = apps;
      });
    });
    super.initState();
  }

  Widget _buildLoading() {
    return Text('Loading');
  }

  Widget _buildList() {
     return ListView.builder(
        itemCount: _apps.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(FeatherIcons.package),
            title: Text(_apps[index].appName),
            subtitle: Text(_apps[index].packageName),
          );
        },
      );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _apps == null ? _buildLoading() : _buildList(),
    );
  }
}
