/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import model.product;

/**
 *
 * @author Admin
 */
public class productDAO extends BaseDAO{
    
    public List<product> getProduct(){
        List<product> list = new ArrayList();
        String sql ="select * from product";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9)));
                
            }
        } catch (Exception e) {
        }
        
       
        return list;
    }
    public static void main(String[] args) {
        productDAO pdao = new productDAO();
        List<product> list = pdao.getProduct(); 
        for (product object : list) {
            System.out.println(object);
        }
    }
}
