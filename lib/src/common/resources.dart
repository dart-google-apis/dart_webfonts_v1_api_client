part of webfonts_v1_api_client;

class WebfontsResource extends Resource {

  WebfontsResource(Client client) : super(client) {
  }

  /**
   * Retrieves the list of fonts currently served by the Google Web Fonts Developer API
   *
   * [sort] - Enables sorting of the list
   *   Allowed values:
   *     alpha - Sort alphabetically
   *     date - Sort by date added
   *     popularity - Sort by popularity
   *     style - Sort by number of styles
   *     trending - Sort by trending
   *
   * [optParams] - Additional query parameters
   */
  Future<WebfontList> list({String sort, Map optParams}) {
    var completer = new Completer();
    var url = "webfonts";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (sort != null && !["alpha", "date", "popularity", "style", "trending"].contains(sort)) {
      paramErrors.add("Allowed values for sort: alpha, date, popularity, style, trending");
    }
    if (sort != null) queryParams["sort"] = sort;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new WebfontList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

