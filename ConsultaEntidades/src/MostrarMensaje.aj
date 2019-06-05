import javax.swing.JFrame;
import javax.swing.JLabel;

public aspect MostrarMensaje {	
	private JFrame frame;
	
    pointcut mostrarmsg(String entidad): (call(void Entidad.consultar (String)) && args (entidad)); 

    after(String entidad) : mostrarmsg(entidad)  {
    	
    	JLabel msj = new JLabel("Has consultado "+entidad);
		frame = new JFrame();
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);	
		msj.setBounds(100, 100, 450, 80);
		frame.getContentPane().add(msj);
    }  
}
