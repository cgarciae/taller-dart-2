Iterable map (Iterable it, dynamic f(dynamic)) sync *
{
    for (var x in it)
        yield f (x);
}

main ()
{

    var it = ["hola", "mundo"];
    print (map (it, (String s) => s.length));//
    
}
