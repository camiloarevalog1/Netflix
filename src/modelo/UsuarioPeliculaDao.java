package modelo;


import entities.Usuariopelicula;
import util.Conexion;

public class UsuarioPeliculaDao 
extends Conexion<Usuariopelicula> 
implements GenericDao<Usuariopelicula>{
	
	public UsuarioPeliculaDao() {
		super(Usuariopelicula.class);
	}
	

}