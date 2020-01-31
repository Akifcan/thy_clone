class Tickets {
  final bool anadoluJet;
  final double price;
  final String date;
  final String departureHour;
  final String departure;
  final String departureCity;
  final String departureAirportFullName;
  final String arrivalHour;
  final String arrival;
  final String arrivalCity;
  final String arrivalAirportFullName;
  final String airline;
  final String flightNumber;
  final String aircraft;
  final String estimatedTime;

  Tickets(
      {this.date,
      this.departureHour,
      this.departure,
      this.departureCity,
      this.departureAirportFullName,
      this.arrivalHour,
      this.arrival,
      this.arrivalCity,
      this.arrivalAirportFullName,
      this.airline,
      this.flightNumber,
      this.aircraft,
      this.estimatedTime,
      this.anadoluJet,
      this.price
      });
}

List<Tickets> tickets = [
  Tickets(
      date: '29 OCAK 2020',
      departureHour: '08:10',
      arrivalHour: '16: 10',
      departure: 'IST',
      departureAirportFullName: 'İstanbul Havalimanı',
      departureCity: 'İstanbul',
      estimatedTime: '11 sa 40 dk',
      arrival: 'JFK',
      arrivalCity: 'New York',
      arrivalAirportFullName: 'John F. Kennedy Uluslararası Havalimanı',
      airline: 'Türk Hava Yolları',
      flightNumber: 'TK0003',
      aircraft: 'Boeing 777-300ER',
      anadoluJet: false,
      price: 2.646),
  Tickets(
      date: '29 OCAK 2020',
      departureHour: '08:10',
      departure: 'ESB',
      departureAirportFullName: 'Ankara Esenboğa Havalimanı',
      departureCity: 'Ankara',
      arrivalHour: '9:10',
      estimatedTime: '1 sa 20 dk',
      arrival: 'ADB',
      arrivalCity: 'İzmir',
      arrivalAirportFullName: 'İzmir Adnan Menderes Havalimanı',
      airline: 'AnadoluJet',
      flightNumber: 'TK0003',
      aircraft: 'Boeing B373-8FH',
      anadoluJet: true,
      price: 120.0),
  Tickets(
      date: '29 OCAK 2020',
      departureHour: '02:20',
      departure: 'IST',
      departureAirportFullName: 'İstanbul Havalimanı',
      departureCity: 'İstanbul',
      arrivalHour: '11:20',
      estimatedTime: '10 sa 10 dk',
      arrival: 'ICN',
      arrivalCity: 'Seul',
      arrivalAirportFullName: 'Incheon Uluslararası Havalimanı',
      airline: 'Türk Hava Yolları',
      flightNumber: 'TK0003',
      aircraft: 'Boeing B777-300ER',
      anadoluJet: false,
      price: 2000.00),
];
