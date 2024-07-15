/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;


import java.sql.Connection;
import java.sql.DriverManager;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;

@Path("usuarios")
public class ConexionCli {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    public void conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/sigh_hoteldg", "root", "");
        } catch (Exception e) {
            System.out.println("Error al conectar a la base de datos "+e.getMessage());
        }
    }
    
    public void desconectar(){
        try {
            if(!con.isClosed()){
                con.close();
            }
        } catch (Exception e) {
            System.out.println("Error al cerrar la conexion "+e.getMessage());
        }
    }
}
