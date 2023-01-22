import 'package:gsheets/gsheets.dart';
import 'package:scouting6647/system/list/list.dart';
import 'package:scouting6647/system/match/match.dart';

const credentials = r'''
{
  "type": "service_account",
  "project_id": "scouting-app-356703",
  "private_key_id": "fe42dd7d4c2936b84d5e3367cb6652b42230fff4",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDMw0AjdtGvSg2o\n1BH7vr6iDxKevjCAH4YruCONyQiLTBhcQ1RnDUIrbPvMwmkSpUc5zslUdMC0QLpt\n6UHhWN2AnsI9SXuWAru2znv4rKkWm1csc1iv7TSz+LjdH2Mnqcu3/Hw5VfIO1kFn\nvJPDEUvfL9K1QK23c50frXJXj8lf440lbRHkFUmedMqCPdMIS7vI64yESzeV200x\nrC7p6VPZ9SqXBEjsWO9PRTMH44lgILGWgco9idGJPC6EOiWrM76SqtPoSvkhTMj6\nGeksQJsf0Xl3sbfZIVf7qmhb6qsYi4x2Dv+nm05I3CPiEUob1PEnWtuw9M7T1StA\nVZDjPMnvAgMBAAECggEAGYMcSy7jOlFiOU5O/UxLSTrSiZfNyDDlUS4ss94/48cz\n4875xas3utxl1SHF4K5aHQBAQncXiX3lHIurCy48zuk471ToAo1NoR3CAX5VxPzO\n1Dl869KEtgW/1sEx4/+6Y66gNa6ZLbMRTCEJUg0mJGU7fhzUaB6ODaPZMsK2Bu3E\nj1FsyCDrOl4pOTse0R4idt28AS9f513rOjANwYLRuk13878XGp7spBobkoUf96bM\nZ9TawI2TuQXRBlpqU9ipYRq0bPvTLodtX9gKo1Y7ro/4A1ErpBC7Gg+EMqoY20jm\nhNcv2cvciAWzYnVYHvaah6aU8Pi6XGFIs6xLewvnYQKBgQDuZEri2FPzmYkr6Mjw\nG0wAc8GbLXmXN8Hx/SqTgxe9a3IyftVO8u+iwot7EAJXgh9wYheuFYTZC/JG1VrV\nk4fxKrU2AlJKMoL3WlVPW+rQ4drxLA2IMlnP8YX/GLNzY33MhKjNdwqBejZVdQRH\nC+WGZYfCSgtmxGECag4BLw2Q4QKBgQDb4xJpL3lPhT7Gu45fpmGjwaIt8abQM8e6\n2t0fo89+yfUgmAB8q/TuFkmlw8h5fxyLWMYjswFvWu0iejQs7HQZeNLo6paATVc/\nhJrHUv8GPUjDyp/ga0dIfzBlHlZRSzAF5WadASfXRD1Upu8dq4J0k+wxcmWQN9hz\nPDwE6oUkzwKBgQC4Dfj/cXRHxMfyfdT+BKVGSBk3nQGere7wzb0cjP88QQO3VtOM\nE+bOrBOSnQah15Y8Z4/O2VBrX1zcMYfjE/fGTGoCXAJ6xMr2/OiWz+nZAjfPMmr0\nN6O998Sz8rdCJJOQ3u+RSxJyaxAeJK17yQSaIjOR3yc0XfRkL8vGQDTiIQKBgAW4\ndZ0o8AYCmGyBKqYQZQ/mlLqPQ+C8yCBzWzdcgqRwyqDLc4/KxXeAOvBGFKwcg3iY\nmacKHCpyeiLgfQUCLc8P1qTanYm++Vscrw4qeZoG9CKr3dbv043uSSsITASXaStu\nGWpSQmAWVWYjZasm8CDqTEXJDR1gZpAw6/rQwx//AoGBAIqf5W4WeKCDB7i7YHIG\nxyA+x+uphQeIBLWCOyI0TCEyHQGXKN+KMKC7hkkdj8VT2RYInZ4U5e3flyfy2INR\n9nbkmwj+o3MxT1WCxfgZZu84SoyDIE8MscyIhFlisw0keFIc5dbhyBCUAqGpcCTP\nuSpmX1lilNrNw0pYqjhCTVTc\n-----END PRIVATE KEY-----\n",
  "client_email": "voltec@scouting-app-356703.iam.gserviceaccount.com",
  "client_id": "106449623057534425927",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/voltec%40scouting-app-356703.iam.gserviceaccount.com"
}
''';

const spreadsheetId = "1eBSDzebV-YHiSuAUo9TqtijLuKGsB7ZcwWyYhrDzOUI";

class MatchController {
  final GSheets gsheets = GSheets(credentials);
  late Spreadsheet spreadsheet;
  late Worksheet sheet;
  
  late Worksheet robotListSheet;

  Future<void> init() async {
    spreadsheet = await gsheets.spreadsheet(spreadsheetId);
    sheet = (await spreadsheet.worksheetByTitle('match'))!;

    robotListSheet = (await spreadsheet.worksheetByTitle('list')!);
  }

  Future<List<Match>?> getAll() async {
    await init();
    final match = (await sheet.values.map.allRows());
    return match?.map((json) => Match.fromGsheets(json)).toList();
  }

  Future<Match?> getById(int id) async {
    await init();
    final map = await sheet.values.map.rowByKey(
      id,
      fromColumn: 1,
    );
    return map == null ? null : Match.fromGsheets(map);
  }

  Future<List<Match>> getAllByID(int id) async {
    await init();

    //GETS ALL ROWS
    final match = (await sheet.values.map.allRows());
    final allrows = match!.map((json) => Match.fromGsheets(json)).toList();

    List<Match> rows = <Match>[];

    for (var row in allrows) {
      if (row.number == id.toString()) {
        rows.add(row);
      }
    }
    return rows;
  }

  Future<void> insertData(Match match) async{
    await init();
    final list = match.toGsheets();
    await sheet.values.map.appendRow(list);

    final convertedList = match.toList();
    
    //GET ALL ROWS
    final robotList = (await robotListSheet.values.map.allRows());
    final allrows = robotList!.map((json) => RobotList.fromGsheets(json)).toList();

    String firstValue = convertedList.values.first;
    for (var row in allrows) {
      if(row.number == firstValue){
        return null;
      }
    }

    await robotListSheet.values.map.appendRow(convertedList);
  }
}
