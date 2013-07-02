part of webfonts_v1_api_client;

class Webfont {

  /** The name of the font. */
  core.String family;

  /** The font files (with all supported scripts) for each one of the available variants, as a key : value map. */
  WebfontFiles files;

  /** This kind represents a webfont object in the webfonts service. */
  core.String kind;

  /** The date (format "yyyy-MM-dd") the font was modified for the last time. */
  core.String lastModified;

  /** The scripts supported by the font. */
  core.List<core.String> subsets;

  /** The available variants for the font. */
  core.List<core.String> variants;

  /** The font version. */
  core.String version;

  /** Create new Webfont from JSON data */
  Webfont.fromJson(core.Map json) {
    if (json.containsKey("family")) {
      family = json["family"];
    }
    if (json.containsKey("files")) {
      files = new WebfontFiles.fromJson(json["files"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModified")) {
      lastModified = json["lastModified"];
    }
    if (json.containsKey("subsets")) {
      subsets = [];
      json["subsets"].forEach((item) {
        subsets.add(item);
      });
    }
    if (json.containsKey("variants")) {
      variants = [];
      json["variants"].forEach((item) {
        variants.add(item);
      });
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for Webfont */
  core.Map toJson() {
    var output = new core.Map();

    if (family != null) {
      output["family"] = family;
    }
    if (files != null) {
      output["files"] = files.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModified != null) {
      output["lastModified"] = lastModified;
    }
    if (subsets != null) {
      output["subsets"] = new core.List();
      subsets.forEach((item) {
        output["subsets"].add(item);
      });
    }
    if (variants != null) {
      output["variants"] = new core.List();
      variants.forEach((item) {
        output["variants"].add(item);
      });
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of Webfont */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The font files (with all supported scripts) for each one of the available variants, as a key : value map. */
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

