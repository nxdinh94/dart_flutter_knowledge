// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool flag = false;
//   final StreamController<int> _controller = StreamController(
//
//   );
//   Timer ? timer;
//   void _onStart (){
//     timer?.cancel();
//     setState(() {
//       flag = true;
//     });
//     timer = Timer.periodic(Duration(seconds: 1), (value){
//       _controller.sink.add(value.tick);
//     });
//   }
//
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _controller.close();
//     super.dispose();
//   }
//
//   void _onStop(){
//     setState(() {
//       flag = false;
//     });
//     timer!.cancel();
//     _controller.sink.add(0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             StreamBuilder(
//               stream: _controller.stream,
//               builder: (context, snapshot) {
//                 return  Text(
//                   '${snapshot.data}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//               initialData: 0,
//
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: flag ?_onStop : _onStart ,
//         tooltip: 'Increment',
//         child: flag? const  Icon(Icons.delete): const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


import 'dart:async';

import 'package:flutter/material.dart';

/// Flutter code sample for [StreamBuilder].

void main() => runApp(const StreamBuilderExampleApp());

class StreamBuilderExampleApp extends StatelessWidget {
  const StreamBuilderExampleApp({super.key});

  static const Duration delay = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StreamBuilderExample(delay: delay));
  }
}

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({required this.delay, super.key});

  final Duration delay;

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  late final StreamController<int> _controller = StreamController<int>(
    onListen: () async {
      await Future<void>.delayed(widget.delay);

      if (!_controller.isClosed) {
        _controller.add(1);
      }

      await Future<void>.delayed(widget.delay);

      if (!_controller.isClosed) {
        _controller.close();
      }
    },
  );

  Stream<int> get _bids => _controller.stream;

  @override
  void dispose() {
    if (!_controller.isClosed) {
      _controller.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.displayMedium!,
      textAlign: TextAlign.center,
      child: Container(
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: BidsStatus(bids: _bids),
      ),
    );
  }
}

class BidsStatus extends StatelessWidget {
  const BidsStatus({required this.bids, super.key});

  final Stream<int>? bids;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: bids,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        List<Widget> children;
        if (snapshot.hasError) {
          children = <Widget>[
            const Icon(Icons.error_outline, color: Colors.red, size: 60),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Stack trace: ${snapshot.stackTrace}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ];
        } else {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              children = const <Widget>[
                Icon(Icons.info, color: Colors.blue, size: 60),
                Padding(padding: EdgeInsets.only(top: 16), child: Text('Select a lot')),
              ];
            case ConnectionState.waiting:
              children = const <Widget>[
                SizedBox(width: 60, height: 60, child: CircularProgressIndicator()),
                Padding(padding: EdgeInsets.only(top: 16), child: Text('Awaiting bids...')),
              ];
            case ConnectionState.active:
              children = <Widget>[
                const Icon(Icons.check_circle_outline, color: Colors.green, size: 60),
                Padding(padding: const EdgeInsets.only(top: 16), child: Text('\$${snapshot.data}')),
              ];
            case ConnectionState.done:
              children = <Widget>[
                const Icon(Icons.info, color: Colors.blue, size: 60),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(snapshot.hasData ? '\$${snapshot.data} (closed)' : '(closed)'),
                ),
              ];
          }
        }

        return Column(mainAxisAlignment: MainAxisAlignment.center, children: children);
      },
    );
  }
}
