public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut verificarSesion(): call(* método ()); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    before() : verificarSesion() {
        // MétodoInicioSesión
    } 
    after() : verificarSesion()  {
        //Ya se inició sesión. (Puede imprimir un mensaje)
    }  
}