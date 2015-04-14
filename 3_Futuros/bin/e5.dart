import 'dart:async';
/**
 * async/await hace todo mas facil
 */
Future main () async
{
    String json = await httpRequest("http://cristian.com");
    
    var n = await new Future.delayed(new Duration(seconds: 2), () => 4);
    
    print (json);
    print (n);
}







































Future<String> httpRequest (String url)
{
    var s = '{"nombre":"Cristian","password":"1234","edad":26,"ciudad":"Medellin","amigos":[]}';
    return new Future.value(s);
}