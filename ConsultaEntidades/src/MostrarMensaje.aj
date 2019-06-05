public aspect MostrarMensaje {	

    pointcut mostrarmsg(): call(* Clientes.consultar (..)); 

    after() : mostrarmsg()  {
        //Ya se inició sesión. (Puede imprimir un mensaje)
    }  
}