
class TicketTypes{
  final String type;
  final String age;
  int count;

  TicketTypes({this.type, this.age, this.count});
}

List<TicketTypes> tickets = [
  TicketTypes(type: 'Yetişkin', age: '12+', count: 1),
  TicketTypes(type: 'Çocuk', age: '2-11', count: 0),
  TicketTypes(type: 'Bebek', age: '2 yaş altı', count: 0),
  TicketTypes(type: 'Engelli', age: '+2', count: 0),
];

resetPassengerCount(){
  for(var ticket in tickets){
    if(ticket.type == 'Yetişkin'){
      ticket.count = 1;
    }else{
      ticket.count = 0;
    }
  }
}