import 'dart:async';
/**
 * "hola" imprime primero que [json]. La funcion (json) {...} que en una
 * lista de espera hasta que (1) httpRequest devuelva el JSON, y (2) hasta
 * los otros Future's previos en la lista sean procesados.
 */
main ()
{
    httpRequest("http://cristian.com").then((json){
        print (json);
    });
    print ("hola");
}







































Future<String> httpRequest (String url)
{
    var s = '{"nombre":"Cristian","password":"1234","edad":26,"ciudad":"Medellin","amigos":[]}';
    return new Future.value(s);
}