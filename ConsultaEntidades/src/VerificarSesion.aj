public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrir� la llamada al inicio de sesi�n.
    pointcut verificarSesion(): call(* m�todo ()); 
  //Advices. Se ejecutar�n en el lugar indicado por el pointcut.
    before() : verificarSesion() {
        // M�todoInicioSesi�n
    } 
    after() : verificarSesion()  {
        //Ya se inici� sesi�n. (Puede imprimir un mensaje)
    }  
}