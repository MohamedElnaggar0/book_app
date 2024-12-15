import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error With ApiServer');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketExeption')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('unexpected Error ,Please try Again');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate With ApiServer');
      default:
        return ServerFailure(
            'Opps There was an error , Please try again later');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not Found , Please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an error , Please try again later');
    }
  }
}
