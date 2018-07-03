package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Controlador;

/**
 * Servlet implementation class RegistrarServlet
 */
@WebServlet("/RegistrarServlet")
public class RegistrarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int item = Integer.parseInt(request.getParameter("accion"));
		
		if(item == 1){
			Controlador c = new Controlador();
			String usuario = request.getParameter("nombre");
			
			String correo = request.getParameter("correo");
			String clave=request.getParameter("clave");
			String f =  request.getParameter("fecha");
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date fecha=null;
			try {
				fecha = formatter.parse(f);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Date fechaa=null;
			System.out.println(usuario + "-" + correo + "-"+ clave+"fecha"+fecha);
			c.registrarUsuario(usuario, correo, fecha, clave);
			
//			RequestDispatcher rd = request.getRequestDispatcher("views/RegistrarFuncionario.jsp");
//        	rd.forward(request, response);
        	response.sendRedirect("../Netflix/");
//         	response.sendRedirect("views/registrar.jsp");
		}
	}

}
