import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sec_project/GameTv.dart';

class UserApi {
  Future<GameTv?> getUser() async {
    var client = http.Client();
    GameTv userResponse = GameTv();
    var uri = Uri.parse(
        'http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all');

    var response = await client.get(uri);
    print(response.body);

    if (response.statusCode == 200) {
      var jsonD = jsonDecode(response.body);
      userResponse = GameTv.fromJson(jsonD);

      return userResponse;
    }

    return null;
  }
}
