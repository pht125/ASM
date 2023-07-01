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
public class ProductDAO extends BaseDAO {

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
//                p.setSale_percent(rs.getInt("sale_percent"));
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
    public ProductDAO() {
    }

    public List<product> getProductKeeb() {
        List<product> list = new ArrayList();
        String sql = "select * from product where cate_id = 1";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<product> getProductMouse() {
        List<product> list = new ArrayList();
        String sql = "select * from product where cate_id = 2";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<product> getProductPad() {
        List<product> list = new ArrayList();
        String sql = "select * from product where cate_id = 3";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<product> getProductSwitch() {
        List<product> list = new ArrayList();
        String sql = "select * from product where cate_id = 4";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<product> getFeaturedProduct() {
        List<product> list = new ArrayList();
        String sql = "select top 12 percent * from product order by newid()";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public product getDetailById(String id) {

        String sql = "select * from product where product_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                return p;
            }
        } catch (Exception e) {

        }
        return null;
    }
    
    public List<product> getProductByName(String name) {
        List<product> list = new ArrayList();
        String sql = "select * from product where product_name like ?";
        
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,"%" +name+"%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                product p = new product();
                p.setCate_id(rs.getInt("cate_id"));
                p.setProduct_id(rs.getString("product_id"));
                p.setProduct_name(rs.getString("product_name"));
                p.setBrand(rs.getString("brand"));
                p.setPrice(rs.getInt("price"));
                p.setSale_percent(rs.getInt("sale_percent"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (Exception e) {

        }
        return list;
    }
    
    public int getNumberOfKeeb(){
        try {
            String sql ="select count(*) from product where cate_id = 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static void main(String[] args) {
        ProductDAO pdao = new ProductDAO();
        int list = pdao.getNumberOfKeeb();
        
    }

}
