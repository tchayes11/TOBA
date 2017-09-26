/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toba.data;
import java.sql.*;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author TinaCH
 */
public class DBUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("TOBAPU");
    
    
    public static void closeStatement(Statement s){
        try{
            if(s != null){
                s.close();
                
            }
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    public static void closePreparedStatement(Statement ps){
        try{
            if (ps != null){
                ps.close();
            }  
            } catch (SQLException e){
                    System.out.println(e);
                    }
            
        }
    
    public static void closeResultSet(ResultSet rs){
        try{
             if (rs != null ){
                 rs.close();
             }
        } catch (SQLException e){
            System.out.println(e);
        }
}

    static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
