public aspect VerificarSesion {	

    pointcut verificarSesion(): call(void Entidad.initialize()); 
    before() : verificarSesion() {
    	if(!IniciarSesion.sesionIniciada) { 		
			IniciarSesion.initialize();
			//Entidad.mensaje.setVisible(false);
		}
    } 
    after() : verificarSesion()  {
        if(IniciarSesion.sesionIniciada) {
        	System.out.println("Sesion Iniciada!");	
        }
    }  
}