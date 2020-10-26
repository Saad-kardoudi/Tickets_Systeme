/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CNX;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LEGION
 */
public class Crud_User {
    public static String[] User_insert(String fist_name,String last_name,String cin,String user,String password,String job,String phone){
        String[] msg_type=new String[2];
        ResultSet rs0 =CNX.Select_requwest("SELECT VALIDATION FROM TICKER.UTILISATEUR WHERE CIN='"+cin+"'");
        ResultSet rs1 =CNX.Select_requwest("SELECT * FROM TICKER.UTILISATEUR WHERE USER_NAME='"+user+"'");
        try {
            if(job.equals("")==false){
            if(rs0.next()==false){
                    if(rs1.next()==false){
                        boolean insert =CNX.AMS_requwest("INSERT INTO UTILISATEUR VALUES ((SELECT Max(ID_USER)+1 FROM UTILISATEUR),'"+cin+"','"+last_name+"','"+fist_name+"','"+job+"','"+phone+"','"+job+"','Invalide','"+user+"','"+password+"')");
                        if(insert==true){
                            msg_type[0]="success";
                            msg_type[1]="<strong>Well done !</strong>data were added successfully";
                            return msg_type;
                        }else{
                            msg_type[0]="warning";
                            msg_type[1]="<strong>Sorry !</strong>we had a problem, please try again ";
                            return msg_type;
                        }  
                    }else{
                         msg_type[0]="danger";
                            msg_type[1]="<strong>Sorry !</strong>try another user name";
                            return msg_type;                  
                    }
                }else{
                    if(rs0.getString(1).equals("Invalid")){msg_type[0]="danger";
                            msg_type[1]="<strong>Sorry !</strong>try another CIN !if you had an acount with"
                                    + "the same Cin try to contcet the admin to Enable it";
                            return msg_type;
                    }else{msg_type[0]="danger";
                            msg_type[1]="<strong>Sorry !</strong>try another CIN";
                            return msg_type;
                    }                     
                }
            }else{
               msg_type[0]="danger";
                            msg_type[1]="<strong>Sorry !</strong>Choose your job";
                            return msg_type;  
            }
        } catch (SQLException ex) {
            Logger.getLogger(Crud_User.class.getName()).log(Level.SEVERE, null, ex);
            msg_type[0]="warning";
            msg_type[1]="<strong>Sorry !</strong>we had a problem, please try again ";
            return msg_type;
        }
        
    }
    public static String[] User_edit(String id,String fist_name,String last_name,String cin,String user,String password,String job,String phone){
        String[] msg_type=new String[2];
        boolean user_=true,cin_=true;
        ResultSet rs =CNX.Select_requwest("SELECT CIN,USER_NAME FROM TICKER.UTILISATEUR WHERE ID_USER="+id+"");
        try {
            rs.next();
            if(!cin.equals(rs.getString(1))){
                ResultSet rs0 =CNX.Select_requwest("SELECT VALIDATION  FROM TICKER.UTILISATEUR WHERE CIN='"+cin+"'");
                if(rs0.next()){
                    cin_=false;
                }           
            }
            if(!user.equals(rs.getString(2))){
              ResultSet rs1 =CNX.Select_requwest("SELECT * FROM TICKER.UTILISATEUR WHERE USER_NAME='"+user+"'");
              if(rs1.next()){
                    user_=false;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Crud_User.class.getName()).log(Level.SEVERE, null, ex);
             msg_type[0]="warning";
            msg_type[1]="<strong>Sorry !</strong>we had a problem, please try again ";
            return msg_type;
        }
        
        
        
        if(job.equals("")==false){
            if(cin_){
                if(user_){
                    boolean insert =CNX.AMS_requwest("INSERT INTO UTILISATEUR VALUES ((SELECT Max(ID_USER)+1 FROM UTILISATEUR),'"+cin+"','"+last_name+"','"+fist_name+"','"+job+"','"+phone+"','"+job+"','Invalide','"+user+"','"+password+"')");
                    if(insert==true){
                        msg_type[0]="success";
                        msg_type[1]="<strong>Well done !</strong>data were added successfully";
                        return msg_type;  
                    }else{
                        msg_type[0]="warning";
                        msg_type[1]="<strong>Sorry !</strong>we had a problem, please try again ";
                        return msg_type;                  
                    }
                }else{
                    msg_type[0]="danger";
                    msg_type[1]="<strong>Sorry !</strong>try another user name";
                    return msg_type;
                }
            }else{
                msg_type[0]="danger";
                msg_type[1]="<strong>Sorry !</strong>try another CIN";
                return msg_type;  
                
            }
        }else{
            msg_type[0]="danger";
            msg_type[1]="<strong>Sorry !</strong>Choose your job";
            return msg_type;
        }
        
    }
        
}
