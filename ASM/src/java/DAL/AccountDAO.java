/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.account;
import model.product;

/**
 *
 * @author Admin
 */
public class AccountDAO extends BaseDAO{
    /*
    account_id int PRIMARY KEY IDENTITY(1,1),
    email varchar(50) NOT NULL UNIQUE,
    password varchar(50) NOT NULL,
    name varchar(50) NOT NULL,
    phone varchar(12) NOT NULL,
    address varchar(255),
    role int NOT NULL
    */
    public account checkAccount(String user, String pwd) {
        try {
            String sql = "select * from account where email = ? and password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, pwd);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                account a = new account();
                a.setAccount_id(rs.getInt("account_id"));
                a.setEmail(rs.getString("email"));
                a.setPassword(rs.getString("password"));
                a.setName(rs.getString("name"));
                a.setPhone(rs.getString("phone"));
                a.setAddress(rs.getString("address"));
                a.setRole(rs.getInt("role"));
                return a;
            }
            statement.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }
    
//    public account getAccount() {
//        try {
//            String sql = "select * from account where email = ? and password = ?";
//            PreparedStatement statement = connection.prepareStatement(sql);
//            statement.setString(1, user);
//            statement.setString(2, pwd);
//            ResultSet rs = statement.executeQuery();
//            if (rs.next()) {
//                account a = new account();
//                a.setAccount_id(rs.getInt("account_id"));
//                a.setEmail(rs.getString("email"));
//                a.setPassword(rs.getString("password"));
//                a.setName(rs.getString("name"));
//                a.setPhone(rs.getString("phone"));
//                a.setAddress(rs.getString("address"));
//                a.setRole(rs.getInt("role"));
//                return a;
//            }
//            statement.close();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        }
//        return null;
//    }
    public static void main(String[] args) {
        
        System.out.println( new AccountDAO().checkAccount("admin", "123"));
    }
    
}
