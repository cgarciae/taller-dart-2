Iterable where (Iterable it, bool f(dynamic)) sync *
{
    
}

main ()
{

    var it = ["hola", "mundo", "hs", "lsjdflksdf"];
    var it2 = where (it, (String s) => s.length > 4);
    
    print (equal (it2, ["mundo", "lsjdflksdf"]));
}









bool equal (Iterable a, Iterable b)
{
    var lA = a.toList();
    var lB = b.toList();
    
    if (lA.length != lB.length)
        return false;
    
    for (var i in new Iterable.generate(a.length))
        if (lA[i] != lB[i])
            return false;
    
    return true;
}