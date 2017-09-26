/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toba.data;
import  java.sql.*;

import Toba_Bank.User;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author TinaCH
 */
public class UserDB {
    
    public static void insert(User user){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query
                = "INSERT INTO USER (firstName, lastName, phone, address, city, state, zipcode, email)"
                + "VALUES (?,?,?,?,?,?,?,?)";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1,user.getFirstName());
            ps.setString(2,user.getLastName());
            ps.setString(3,user.getPhone());
            ps.setString(4,user.getAddress());
            ps.setString(5,user.getCity());
            ps.setString(6,user.getState());
            ps.setString(7,user.getZipcode());
            ps.setString(8,user.getEmail());
        } catch (SQLException e){
            System.out.println(e);
            
        }finally{
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    
    }

    
    public static void update(User user){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "UPDATE User SET "
                + "FirstName = ?,"
                + "LastName = ? "
                + "Phone = ? "
                + "Address = ?"
                + "City = ? "
                + "State = ?"
                + "ZipCode = ? "
                + " WHERE Email = ? ";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1,user.getFirstName());
            ps.setString(2,user.getLastName());
            ps.setString(3,user.getPhone());
            ps.setString(4,user.getAddress());
            ps.setString(5,user.getCity());
            ps.setString(6,user.getState());
            ps.setString(7,user.getZipcode());
            ps.setString(8,user.getEmail());
            
           ps.executeUpdate();
        } catch (SQLException e){
            System.out.println(e);
            
        }finally{
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static User selectUser(String username){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT u from User u" +
                "WHERE u.username = :username";
        TypedQuery<User> q = em.createQuery(qString, User.class);
        q.setParameter("username", username);
        
        try{
            User user = q.getSingleResult();
            return user;
            
        }catch (NoResultException e){
            return null;
        }finally {
            em.close();
        }
    }
    
    public static boolean emailExists(String email){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = "SELECT Email FROM User "
                + "WHERE Email = ?";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        }
        catch (SQLException e){
            System.out.println(e);
            return false;
        }finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}     
    
        
