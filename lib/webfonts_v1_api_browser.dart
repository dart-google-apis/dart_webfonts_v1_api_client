library webfonts_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_webfonts_v1_api/src/browser_client.dart';
import "package:google_webfonts_v1_api/webfonts_v1_api_client.dart";

/** The Google Fonts Developer API. */
class Webfonts extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Webfonts([oauth.OAuth2 this.auth]);
}
