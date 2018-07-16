package model;

public class Comentario {
	private String comentario;
	private String correo;
	 public Comentario(String comentario,String correo){
		 this.comentario=comentario;
		 this.correo=correo;
	 }
	 public Comentario(){}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	
}
