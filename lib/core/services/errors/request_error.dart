

 class RequestError {
  final String message;
  final int? statusCode;
  RequestError({required this.message, this.statusCode});
  factory RequestError.fromStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return RequestError(message: 'Bad Request', statusCode: statusCode);
      case 401:
        return RequestError(message: 'Unauthorized', statusCode: statusCode);
      case 403:
        return RequestError(message: 'Forbidden', statusCode: statusCode);
      case 404:
        return RequestError(message: 'Not Found', statusCode: statusCode);
      case 405:
        return RequestError(message: 'Method Not Allowed', statusCode: statusCode);
      case 408:
        return RequestError(message: 'Request Timeout', statusCode: statusCode);
      case 409:
        return RequestError(message: 'Conflict', statusCode: statusCode);
      case 410:
        return RequestError(message: 'Gone', statusCode: statusCode);
      case 411:
        return RequestError(message: 'Length Required', statusCode: statusCode);
      case 412:
        return RequestError(message: 'Precondition Failed', statusCode: statusCode);
      case 413:
        return RequestError(message: 'Payload Too Large', statusCode: statusCode);
      case 414:
        return RequestError(message: 'URI Too Long', statusCode: statusCode);
      case 415:
        return RequestError(message: 'Unsupported Media Type', statusCode: statusCode);
      case 416:
        return RequestError(message: 'Range Not Satisfiable', statusCode: statusCode);
      case 417:
        return RequestError(message: 'Expectation Failed', statusCode: statusCode);
      case 418:
        return RequestError(message: 'I\'m a teapot', statusCode: statusCode);
      case 421:
        return RequestError(message: 'Misdirected Request', statusCode: statusCode);
      case 422:
        return RequestError(message: 'Unprocessable Entity', statusCode: statusCode);
      case 423:
        return RequestError(message: 'Locked', statusCode: statusCode);
      case 424:
        return RequestError(message: 'Failed Dependency', statusCode: statusCode);
      case 425:
        return RequestError(message: 'Too Early', statusCode: statusCode);
      case 426:
        return RequestError(message: 'Upgrade Required', statusCode: statusCode);
      case 428:
        return RequestError(message: 'Precondition Required', statusCode: statusCode);
      case 429:
        return RequestError(message: 'Too Many Requests', statusCode: statusCode);
      case 431:
        return RequestError(message: 'Request Header Fields Too Large', statusCode: statusCode);
      case 451:
        return RequestError(message: 'Unavailable For Legal Reasons', statusCode: statusCode);
      case 500:
        return RequestError(message: 'Internal Server Error', statusCode: statusCode);
      case 501:
        return RequestError(message: 'Not Implemented', statusCode: statusCode);
      case 502:
        return RequestError(message: 'Bad Gateway', statusCode: statusCode);
      case 503:
        return RequestError(message: 'Service Unavailable', statusCode: statusCode);
      case 504:
        return RequestError(message: 'Gateway Timeout', statusCode: statusCode);
      case 505:
        return RequestError(message: 'HTTP Version Not Supported', statusCode: statusCode);
      case 506:
        return RequestError(message: 'Variant Also Negotiates', statusCode: statusCode);
      case 507:
        return RequestError(message: 'Insufficient Storage', statusCode: statusCode);
      case 508:
        return RequestError(message: 'Loop Detected', statusCode: statusCode);
      case 510:
        return RequestError(message: 'Not Extended', statusCode: statusCode);
      case 511:
        return RequestError(message: 'Network Authentication Required', statusCode: statusCode);
      default:
        return RequestError(message: 'Unknown error', statusCode: statusCode);
    }
  }
}
