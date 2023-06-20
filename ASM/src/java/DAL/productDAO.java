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
    
//    public List<product> getProductByCate(int cate_id){
//        List<product> list = new ArrayList();
//        String sql ="select * from product where cate_id = ?";
//        try {
//            PreparedStatement statement = connection.prepareStatement(sql);
//            ResultSet rs = statement.executeQuery();
//            while(rs.next()){
//                product p = new product();
//                p.setCate_id(rs.getInt("cate_id"));
//                p.setProduct_id(rs.getString("product_id"));
//                p.setProduct_name(rs.getString("product_name"));
//                p.setBrand(rs.getString("brand"));
//                p.setPrice(rs.getInt("price"));
//                p.setSale_price(rs.getInt("sale_price"));
//                p.setQuantity(rs.getInt("quantity"));
//                p.setImg(rs.getString("img"));
//                p.setDescription(rs.getString("description"));
//                list.add(p);
//                
//            }
//        } catch (Exception e) {
//        }
//        
//       
//        return list;
//    }
    
    
    public productDAO(){
    }

    public List<product> getProductKeeb() {
        List<product> list = new ArrayList();
        String sql ="select * from product where cate_id = 1";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_price(rs.getInt("sale_price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
                
            }
        } catch (Exception e) {
        }
        
       
        return list;
    }
    public static void main(String[] args) {
        productDAO pdao = new productDAO();
        List<product> list = pdao.getProductKeeb(); 
        for (product product : list) {
            System.out.println(product);
        }
    }
    
}
