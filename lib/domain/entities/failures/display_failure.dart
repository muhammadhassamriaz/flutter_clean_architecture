class DisplayableFailure {
  DisplayableFailure({
    required this.title,
    required this.message,
  });

  DisplayableFailure.commonError([String? message])
      : title = 'Error',
        message = message ?? 'Something went wrong, please try again later';

  String title;
  String message;
}
