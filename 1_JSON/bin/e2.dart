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
    
    var usuario = new Usuario ()
        ..nombre = "Cristian"
        ..password = "1234"
        ..edad = 26
        ..ciudad = "Medellin"
        ..amigos = [];
    
    var json = encodeJson(usuario);
    
    print (json);
}
