public aspect MostrarMensaje {	

    pointcut mostrarmsg(): call(* Clientes.consultar (..)); 

    after() : mostrarmsg()  {
        //Ya se inici� sesi�n. (Puede imprimir un mensaje)
    }  
}