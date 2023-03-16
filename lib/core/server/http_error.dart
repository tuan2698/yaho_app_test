import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yaho_test/core/server/http_client_wrapper.dart';

class HttpError extends DioError {
  final ErrorMessageParser? errorMessageParser;

  HttpError({
    required DioError dioError,
    this.errorMessageParser,
  }) : super(
    requestOptions: dioError.requestOptions,
    response: dioError.response,
    type: dioError.type,
    error: dioError.error,
  );

  @override
  String? get message {
    if (error is SocketException) {
      return "Cannot connect to server. Please check network and try again!";
    }

    if (errorMessageParser != null) {
      final parsedMessage = errorMessageParser!(httpError: this);
      if (parsedMessage != null) {
        return parsedMessage;
      }
    }

    return super.message;
  }

  @override
  String toString() {
    return message ?? "";
  }
}

String? errorMessageParser({
  required HttpError httpError,
}) {
  if (httpError.response?.data is Map) {
    final Map data = httpError.response?.data;
    if (data.containsKey("message")) {
      return data["message"];
    } else {
      final StringBuffer buffer = StringBuffer();
      data.forEach((key, value) {
        if (buffer.isNotEmpty) {
          buffer.write("\n");
        }
        if (value is List) {
          buffer.write(value.join("\n"));
        } else {
          buffer.write(value);
        }
      });
      return buffer.toString();
    }
  }
  return null;
}
