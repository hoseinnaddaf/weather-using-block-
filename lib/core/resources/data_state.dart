
abstract class DataSate<T>{

  final T? data ;
  final String? error  ;

  const DataSate(this.data, this.error);
}

class DataSuccess<T> extends DataSate<T>{
  const DataSuccess(T? data):super(data , null) ;
}

class DataFailed<T> extends DataSate<T>{
  const DataFailed(String error ) :super(null ,  error) ;
}