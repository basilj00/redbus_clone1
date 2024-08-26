class Dummydb {
  final String type;
  final String description;
  final String validTill;
  final String code;

  Dummydb({required this.type, required this.description, required this.validTill, required this.code});
}

List<Dummydb> offers = [
  Dummydb(type: 'Bus', description: 'Save up to Rs 250 on bus tickets', validTill: '31 Aug', code: 'FIRST'),
  Dummydb(type: 'Bus', description: 'Save up to Rs 100 on train tickets', validTill: '31 Aug', code: 'TRAIN100'),
    Dummydb(type: 'Train', description: 'Save up to Rs 400 on train tickets', validTill: '31 Aug', code: 'TRAIN400'),
  Dummydb(type: 'Flight', description: 'Save up to Rs 3000 on train tickets', validTill: '31 Aug', code: 'FLIGHT3000'),
  Dummydb(type: 'Cab', description: 'Save up to Rs 49 on train tickets', validTill: '31 Aug', code: 'CAB49'),

];
