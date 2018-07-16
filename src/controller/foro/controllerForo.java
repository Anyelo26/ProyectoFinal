package controller.foro;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Account;
import model.Comentario;
import model.ControlaMenu;
import model.PMF;

import com.google.appengine.api.users.UserServiceFactory;


public class controllerForo extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private static ArrayList<Comentario> comentarios=new ArrayList<Comentario>();
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException {
		request.setAttribute("comentarios", comentarios);
	
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		if(request.getParameter("mode")!=null){
			
			com.google.appengine.api.users.User usuarioGoogle =UserServiceFactory.getUserService().getCurrentUser();
		
			String correo="";
			String comentario=request.getParameter("comentario");
			
				if(usuarioGoogle==null){
					correo="Anónimo";
				}else{
					
					String queryUsuario="select from "+Account.class.getName()+" where correo=='"+ usuarioGoogle.getEmail() + "'"+
							" && status==true";
					@SuppressWarnings("unchecked")
					List<Account> buscarUsuario=(List<Account>) pm.newQuery(queryUsuario).execute();
					
					correo=buscarUsuario.get(0).getCorreo();
					
				}
				
			Comentario nuevo=new Comentario(comentario,correo);
			comentarios.add(nuevo);		
		
		}
		
		//------------------------------Menu
		ControlaMenu.construyeMenu(pm, UserServiceFactory.getUserService().getCurrentUser(), request);
		
		request.setAttribute("comentarios", comentarios);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/JSPFiles/Foro/index.jsp");
		dispatcher.forward(request, response);
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException {
		
		doGet(request,response);
		
	}
}