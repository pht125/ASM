/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import DAL.ProductDAO;
import java.util.ArrayList;
import java.util.List;
import model.bill_info;
import model.product;

/**
 *
 * @author Admin
 */
public class HandleCookie {

    public static List<product> CookieToProduct(String cookie) {
        try {
            String[] listProductString = cookie.split("/");
            List<product> listProduct = new ArrayList<>();
            ProductDAO pdao = new ProductDAO();
            for (String productString : listProductString) {
                String[] item = productString.split(":");
                String productID = item[0];
                int quantity = Integer.parseInt(item[1]);
                product product = pdao.getDetailById(productID);
                product.setQuantity(quantity);
                listProduct.add(product);
            }
            return listProduct;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static List<bill_info> CookieToOrderDetail(String cookie, int orderID) {
        String[] listProductString = cookie.split("/");
        List<bill_info> OrderDetails = new ArrayList<>();
        for (String productString : listProductString) {
            String[] item = productString.split(":");
            try {
                int productID = Integer.parseInt(item[0]);
                int quantity = Integer.parseInt(item[1]);
                bill_info orderDetail = new bill_info();
                orderDetail.setBill_id(orderID);
                orderDetail.setProduct_id(productID);
                orderDetail.setQuantity_bill(quantity);
                OrderDetails.add(orderDetail);

            } catch (Exception e) {
                return null;
            }
        }
        return OrderDetails;
    }

}
