Iterable<int> contar () sync *
{
    var n = 0;
    while (true)
    {
        yield n;
        n++;
    }
}

main ()
{
    var s = 'Dart (originalmente llamado Dash) es un lenguaje de programación de código abierto, desarrollado por Google. Fue revelado en la conferencia goto; en Aarhus, Dinamarca el 10 octubre de 2011.1 El objetivo de Dart no es reemplazar JavaScript como el principal lenguaje de programación web en los navegadores web, sino ofrecer una alternativa más moderna. El espíritu del lenguaje puede verse reflejado en las declaraciones de Lars Bak, ingeniero de software de Google, que define a Dart como un “lenguaje estructurado pero flexible para programación Web”.';
    var l = s.split(" ");
    
    var it = contar ().iterator;
    
    it.moveNext();
    print (it.current);
    
    it.moveNext();
    print (it.current);
    
    it.moveNext();
    print (it.current);
    
}