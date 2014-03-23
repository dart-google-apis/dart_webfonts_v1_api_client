part of webfonts_v1_api;

class Webfont {

  /** The category of the font. */
  core.String category;

  /** The name of the font. */
  core.String family;

  /** The font files (with all supported scripts) for each one of the available variants, as a key : value map. */
  core.Map<core.String, core.String> files;

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
    if (json.containsKey("category")) {
      category = json["category"];
    }
    if (json.containsKey("family")) {
      family = json["family"];
    }
    if (json.containsKey("files")) {
      files = _mapMap(json["files"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModified")) {
      lastModified = json["lastModified"];
    }
    if (json.containsKey("subsets")) {
      subsets = json["subsets"].toList();
    }
    if (json.containsKey("variants")) {
      variants = json["variants"].toList();
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for Webfont */
  core.Map toJson() {
    var output = new core.Map();

    if (category != null) {
      output["category"] = category;
    }
    if (family != null) {
      output["family"] = family;
    }
    if (files != null) {
      output["files"] = _mapMap(files);
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModified != null) {
      output["lastModified"] = lastModified;
    }
    if (subsets != null) {
      output["subsets"] = subsets.toList();
    }
    if (variants != null) {
      output["variants"] = variants.toList();
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of Webfont */
  core.String toString() => JSON.encode(this.toJson());

}

class WebfontList {

  /** The list of fonts currently served by the Google Fonts API. */
  core.List<Webfont> items;

  /** This kind represents a list of webfont objects in the webfonts service. */
  core.String kind;

  /** Create new WebfontList from JSON data */
  WebfontList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Webfont.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for WebfontList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of WebfontList */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
