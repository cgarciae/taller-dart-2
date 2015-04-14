import 'package:redstone_mapper/mapper.dart';
import 'package:redstone_mapper/mapper_factory.dart';


class Usuario
{
    @Field() String nombre;
    @Field() String password;
    @Field() int edad;
    @Field() String ciudad;
    
    @Field() List<Usuario> amigos;
}

main()
{
    bootstrapMapper();
    
    var json = '{"nombre":"Cristian","password":"1234","edad":26,"ciudad":"Medellin","amigos":[]}';
    
    Usuario cristian = decodeJson(json, Usuario);
    
    print (cristian.nombre);
    print (cristian.password);
    print (cristian.edad);
    print (cristian.ciudad);
    print (cristian.amigos);
}
