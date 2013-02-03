part of webfonts_v1_api_client;

class Webfont {

  /** This kind represents a webfont object in the webfonts service. */
  String kind;

  /** Create new Webfont from JSON data */
  Webfont.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Webfont */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Webfont */
  String toString() => JSON.stringify(this.toJson());

}

class WebfontList {

  /** The list of fonts currently served by the Google Fonts API. */
  List<Webfont> items;

  /** This kind represents a list of webfont objects in the webfonts service. */
  String kind;

  /** Create new WebfontList from JSON data */
  WebfontList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Webfont.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for WebfontList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of WebfontList */
  String toString() => JSON.stringify(this.toJson());

}

