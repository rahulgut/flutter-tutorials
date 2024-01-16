import 'package:flutter/material.dart';
import 'package:hello_world/models/location_fact.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  const LocationDetail(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderFacts(location),
        )
    );
  }

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>.generate(location.facts.length, (index) => 
      LocationSection(fact: location.facts[index])
    );
    // for(int i=0;i<location.facts.length;i++) {
    //   result.add(_sectionTitle(location.facts[i].title));
    //   result.add(_sectionText(location.facts[i].text));
    // }
    return result;
  }

  // Widget _sectionTitle(String text) {
  //   return Text(text);
  // }

  // Widget _sectionText(String text) {
  //   return Text(text);
  // }
}

class LocationSection extends StatelessWidget {
  final LocationFact fact;
  const LocationSection({super.key, required this.fact});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(fact.title),
      Expanded(child: Text(fact.text)),
    ]);
  }
}