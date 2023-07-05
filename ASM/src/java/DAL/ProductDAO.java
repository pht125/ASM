/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
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

    public List<product> getProductKeeb(int value) {
        List<product> list = new ArrayList();
        String sql = "select * from product where cate_id = 1";
        if (value == 0) {
            sql += "";
        } else if (value == 1) {
            sql += "order by asc";
        } else if (value == 2) {
            sql += "order by desc";
        } else if (value == 3) {
            sql += "order by product_id";
        }

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
        String sql = "select top 4 percent * from product order by newid()";
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
            statement.setString(1, "%" + name + "%");
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

    public List<product> pagingKeeb(int page, int recordsPerPage) {
        List<product> list = new ArrayList();
        try {
            String sql = "SELECT cate_id,product_id,product_name,brand,price,sale_percent,quantity,img,description\n"
                    + "FROM\n"
                    + "(SELECT ROW_NUMBER() OVER (ORDER BY product_id ASC) as rownum, cate_id, product_id,product_name,brand,price,sale_percent,quantity,img,description FROM product)as tblHuman \n"
                    + "WHERE\n"
                    + "cate_id = 1 and \n"
                    + "rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ?";
//            if (value == 1) {
//                sql += "order by asc";
//            } else if (value == 2) {
//                sql += "order by desc";
//            } else if (value == 3) {
//                sql += "order by product_id";
//            }
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, page);
            statement.setInt(2, recordsPerPage);
            statement.setInt(3, recordsPerPage);
            statement.setInt(4, page);
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
    public List<product> pagingMouse(int page, int recordsPerPage) {
        List<product> list = new ArrayList();
        try {
            String sql = "SELECT *\n" +
"	FROM\n" +
"	(SELECT ROW_NUMBER() OVER (ORDER BY product_id ASC) as rownum, cate_id, product_id,product_name,brand,price,sale_percent,quantity,img,description FROM product where cate_id = 2)as tblHuman \n" +
"	WHERE\n" +
"	rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ?";
//            if (value == 1) {
//                sql += "order by asc";
//            } else if (value == 2) {
//                sql += "order by desc";
//            } else if (value == 3) {
//                sql += "order by product_id";
//            }
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, page);
            statement.setInt(2, recordsPerPage);
            statement.setInt(3, recordsPerPage);
            statement.setInt(4, page);
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

    public List<product> pagingKeebByOrder(int page, int recordsPerPage, String type) {
        List<product> list = new ArrayList();
        try {
            String sql;
            switch (type) {
                case "1":
                    sql = "SELECT cate_id,product_id,product_name,brand,price,sale_percent,quantity,img,description\n"
                            + "FROM\n"
                            + "(SELECT ROW_NUMBER() OVER (ORDER BY price ASC) as rownum, cate_id, product_id,product_name,brand,price,sale_percent,quantity,img,description FROM product where cate_id = 1)as tblHuman \n"
                            + "WHERE\n"
                            + "rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ?";
                    break;
                case "2":
                    sql = "SELECT cate_id,product_id,product_name,brand,price,sale_percent,quantity,img,description\n"
                            + "FROM\n"
                            + "(SELECT ROW_NUMBER() OVER (ORDER BY price DESC) as rownum, cate_id, product_id,product_name,brand,price,sale_percent,quantity,img,description FROM product where cate_id = 1)as tblHuman \n"
                            + "WHERE\n"
                            + "rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ? ";
                    break;
                default:
                    sql = "SELECT cate_id,product_id,product_name,brand,price,sale_percent,quantity,img,description\n"
                            + "FROM\n"
                            + "(SELECT ROW_NUMBER() OVER (ORDER BY product_id DESC) as rownum, cate_id, product_id,product_name,brand,price,sale_percent,quantity,img,description FROM product where cate_id = 1)as tblHuman \n"
                            + "WHERE\n"
                            + "rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ?";
                    break;

            }
//            sql = "SELECT cate_id,product_id,product_name,brand,price,sale_percent,quantity,img,description\n"
//                    + "FROM\n"
//                    + "(SELECT ROW_NUMBER() OVER (ORDER BY product_id ASC) as rownum, cate_id, product_id,product_name,brand,price,sale_percent,quantity,img,description FROM product)as tblHuman \n"
//                    + "WHERE\n"
//                    + "cate_id = 1 and \n"
//                    + "rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ?";
////            if (value == 1) {
////                sql += "order by asc";
////            } else if (value == 2) {
////                sql += "order by desc";
////            } else if (value == 3) {
////                sql += "order by product_id";
////            }
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, page);
            statement.setInt(2, recordsPerPage);
            statement.setInt(3, recordsPerPage);
            statement.setInt(4, page);
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

    public int countKeeb() {
        String sql = "SELECT COUNT(*) as totalrow FROM product where cate_id = 1";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("totalrow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public int countMouse() {
        String sql = "SELECT COUNT(*) as totalrow FROM product where cate_id = 2";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("totalrow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<product> OrderAscKeeb() {
        List<product> list = new ArrayList();
        String sql = "select * from product where cate_id = 1 order by price asc";
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

    public static void main(String[] args) {
        ProductDAO pdao = new ProductDAO();
        List<product> list = pdao.pagingMouse(1, 8);
        for (product object : list) {
            System.out.println(object);
        }
    }

}
