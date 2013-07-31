part of webfonts_v1_api;

class WebfontsResource_ {

  final Client _client;

  WebfontsResource_(Client client) :
      _client = client;

  /**
   * Retrieves the list of fonts currently served by the Google Fonts Developer API
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
  async.Future<WebfontList> list({core.String sort, core.Map optParams}) {
    var url = "webfonts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new WebfontList.fromJson(data));
  }
}

