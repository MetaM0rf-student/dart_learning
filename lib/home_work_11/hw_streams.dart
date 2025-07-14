void runTask6() async {
  final stream = Stream.fromIterable([1,2,3,4,5]);
  
  await for(var i in stream) {
    print(i);
  }  

  stream.listen((event) {
    print(event);
  }); 
}

void runTask7() async{
  final stream = Stream.periodic(const Duration(seconds: 1), (event) => event).take(10);
  await for(var i in stream) {
    print('$i...');
  }
}

