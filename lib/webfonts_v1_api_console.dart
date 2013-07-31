library webfonts_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_webfonts_v1_api/src/cloud_api_console.dart';

import "package:google_webfonts_v1_api/webfonts_v1_api_client.dart";

/** The Google Fonts Developer API. */
class Webfonts extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Webfonts([oauth2.OAuth2Console this.auth]);
}
