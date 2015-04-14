import 'dart:async';
/**
 * La funcion foo sincronica es casi equivalente a la funcion bar asyncronica.
 * Dart no puede diferenciar entre una funcion syncronica que devuelve un 
 * Future de una funcion asincronica que devuelve un tipo normal. El retorno
 * de la funciones asincronicas automaticamente es capturado en un Future.
 */
Future<String> foo ()
{
    return httpRequest("http://cristian.com").then((String json)
    {
        print (json);
        return json;
    });
}

Future<String> bar () async
{
    String json = await httpRequest("http://cristian.com");

    print (json);
    return json;
}


main ()
{
    foo ();
    bar ();
}







































Future<String> httpRequest (String url)
{
    var s = '{"nombre":"Cristian","password":"1234","edad":26,"ciudad":"Medellin","amigos":[]}';
    return new Future.value(s);
}