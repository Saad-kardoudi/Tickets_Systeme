/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CNX;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LEGION
 */
public class CNX {
    public static Connection get( ){
      try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ticker", "NTIC");
            return c;
        } catch (Exception ex) {
            Logger.getLogger(CNX.class.getName()).log(Level.SEVERE, null, ex);return null;
        }
        
    }  
    public static ResultSet Select_requwest(String req){
        try{
            Connection c=get();
            Statement st= c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ResultSet rs= st.executeQuery(req);
            return rs;
        }catch(Exception e){
            return null;
            
        }
    }
    public static boolean AMS_requwest(String req){
        try{
            Connection c=get();
            Statement st= c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            st.executeQuery(req);
            return true;
            
        }catch(Exception e){
            return false;
            
        }
    }
    public static String error(String type,String msg){
        String div="<div class=\"alert alert-"+type+" alert-dismissible fade show\" role=\"alert\" style=\"margin-top:20px\">\n" +
"                                     "+msg+"\n" +
"                                    <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
"                                      <span aria-hidden=\"true\">&times;</span>\n" +
"                                    </button>\n" +
"                                  </div>";
        return div;
    }
}
