Iterable<int> longPalabrasAyG (Iterable<String> it) sync *
{
    for (var s in it)
    {
        if (s.contains("a") && s.contains("g"))
        {
            yield s.length;
        }
    }
}

main ()
{
    var s = 'Dart (originalmente llamado Dash) es un lenguaje de programación de código abierto, desarrollado por Google. Fue revelado en la conferencia goto; en Aarhus, Dinamarca el 10 octubre de 2011.1 El objetivo de Dart no es reemplazar JavaScript como el principal lenguaje de programación web en los navegadores web, sino ofrecer una alternativa más moderna. El espíritu del lenguaje puede verse reflejado en las declaraciones de Lars Bak, ingeniero de software de Google, que define a Dart como un “lenguaje estructurado pero flexible para programación Web”.';
    var l = s.split(" ");
    
    print (longPalabrasAyG(l));
}