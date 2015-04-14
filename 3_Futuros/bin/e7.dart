import 'dart:async';

/**
 * Modifiquen httpRequest para que se demore mas de 1500 milisegundos
 */
Future<String> httpRequest (String url)
{
    var s = '{"nombre":"Cristian","password":"1234","edad":26,"ciudad":"Medellin","amigos":[]}';
    return new Future.value(s);
}

main () async
{
    var t = new DateTime.now();
    var json = await httpRequest("http://cristian.com");
    
    print (new DateTime.now().difference(t).inMilliseconds > 1500);
}
