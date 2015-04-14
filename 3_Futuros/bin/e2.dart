import 'dart:async';
/**
 * Los futures pueden ser encadenados
 */
main ()
{
    String json;
    httpRequest("http://cristian.com").then((_json){
        json = _json;
        
        return new Future.delayed(new Duration(seconds: 2));
    })
    .then((_){
        
        print (json);
    });
    print ("hola");
}







































Future<String> httpRequest (String url)
{
    var s = '{"nombre":"Cristian","password":"1234","edad":26,"ciudad":"Medellin","amigos":[]}';
    return new Future.value(s);
}