class ConstantApi {
  // Base URL
  static const String baseUrl = 'https://api.nytimes.com/svc/mostpopular/v2';

  // Your API Key
  static const String apiKey = 'YOUR_API_KEY'; // Replace with your actual key

  //========================
  //        Endpoints
  //========================

  /// Most emailed articles (1, 7, or 30 days)
  static String emailed(int period) =>
      '$baseUrl/emailed/$period.json?api-key=$apiKey';

  /// Most viewed articles (1, 7, or 30 days)
  static String viewed(int period) =>
      '$baseUrl/viewed/$period.json?api-key=$apiKey';

  /// Most shared articles (any platform) (1, 7, or 30 days)
  static String shared(int period) =>
      '$baseUrl/shared/$period.json?api-key=$apiKey';

  /// Most shared by platform (facebook/email)
  static String sharedByType(int period, String shareType) =>
      '$baseUrl/shared/$period/$shareType.json?api-key=$apiKey';
}
