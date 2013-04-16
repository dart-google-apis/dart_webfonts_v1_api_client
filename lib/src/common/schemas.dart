part of webfonts_v1_api_client;

class Webfont {

  /** The font files (with all supported scripts) for each one of the available variants. */
  WebfontFiles files;

  /** This kind represents a webfont object in the webfonts service. */
  core.String kind;

  /** Create new Webfont from JSON data */
  Webfont.fromJson(core.Map json) {
    if (json.containsKey("files")) {
      files = new WebfontFiles.fromJson(json["files"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Webfont */
  core.Map toJson() {
    var output = new core.Map();

    if (files != null) {
      output["files"] = files.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Webfont */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The font files (with all supported scripts) for each one of the available variants. */
class WebfontFiles {

  /** Create new WebfontFiles from JSON data */
  WebfontFiles.fromJson(core.Map json) {
  }

  /** Create JSON Object for WebfontFiles */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of WebfontFiles */
  core.String toString() => JSON.stringify(this.toJson());

}

class WebfontList {

  /** The list of fonts currently served by the Google Fonts API. */
  core.List<Webfont> items;

  /** This kind represents a list of webfont objects in the webfonts service. */
  core.String kind;

  /** Create new WebfontList from JSON data */
  WebfontList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

