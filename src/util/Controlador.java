package util;

import java.util.Date;



import java.util.List;




import entities.Usuario;
import modelo.GenericDao;

import modelo.UsuarioDao;

public class Controlador {

	public void registrarUsuario(String usuario,String email,Date fecha,String clave ){
		Usuario u= new Usuario(usuario,clave,fecha,email);
		GenericDao<Usuario>us=new UsuarioDao();
		us.insert(u);
		
	   // Deporte d = new Deporte(nombre);
	    //GenericDao<Deporte> usDao = new DeporteDao();
	    //usDao.insert(d);

	}
	
	
	
	
	
	public boolean login(String nombre,String password){
		System.out.println("juancho");
		GenericDao<Usuario> usDao= new UsuarioDao();
		Usuario us= usDao.find(nombre);
		System.out.println(us);
		System.out.println("1234");
		if(us == null){
			System.out.println("jua");
			return false;
		}
		
		else if(us.getUsuario().equals(nombre) && us.getClave().equals(password)){
			System.out.println("juan");
			return true;
		}else {
			System.out.println("juanch");
			return false;
		}
		
		
	}
	
	public Usuario buscarUsuario(String nombre) {
			
			GenericDao<Usuario> us= new UsuarioDao();
			Usuario u = us.find(nombre);
			return u;
	}
	
	
	
}
