import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation {
  static Location fetchAny() {
    return Location(
      name: 'Amsterdam River View',
      url: 'lib/images/amsterdam_pic.jpeg',
      facts: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text: 'Amsterdam breathtaking river view. When you take a cruise in the canals in Amsterdam in The Netherlands, you can get some amazing views of the city and historic architecture.'
        ),
        LocationFact(
          title: 'How to Get There',
          text: 'You can take a overnight bus from Berlin to Amsterdam. You can also board the Berlin to Amsterdam intercity train departs from the Hauptbahnhof station and arrives at the Amsterdam central station.'
        )
      ]
    );
  }
}