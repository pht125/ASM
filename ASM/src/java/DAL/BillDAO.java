/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.account;
import model.bill;
import model.cart;
import model.item;

/**
 *
 * @author Admin
 */
public class BillDAO extends BaseDAO {
    
//    public List<bill> getBillByAccountId(String id){
//        String sql = "INSERT INTO bill VALUES (?,?,?,?)";
//    }

    public void addBill(account acc, cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try {
            //add new bill
            String sql = "INSERT INTO bill VALUES (?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, acc.getAccount_id());
            statement.setString(2, date);
            statement.setString(3, acc.getAddress());
            statement.setInt(4, cart.getTotalPrice());
            statement.executeUpdate();
            //get id of newest bill
            String sql1 = "select top 1 bill_id from bill order by bill_id desc";
            PreparedStatement statement1 = connection.prepareStatement(sql1);
            ResultSet rs = statement1.executeQuery();
            //
            if (rs.next()) {
                int bill_id = rs.getInt("bill_id");
                for (item i : cart.getItems()) {
                    String sql2 = "INSERT INTO bill_info VALUES (?,?,?,?)";
                    PreparedStatement statement2 = connection.prepareStatement(sql2);
                    statement2.setInt(1, bill_id);
                    statement2.setString(2, i.getProduct().getProduct_id());
                    statement2.setInt(3, i.getQuantity());
                    statement2.setInt(4, i.getPrice());
                    statement2.executeUpdate();
                }
            }
            String sql3 = "update product set quantity=quantity-? where product_id like ?";
            PreparedStatement statement3 = connection.prepareStatement(sql3);
            for (item i : cart.getItems()) {
                statement3.setInt(1, i.getQuantity());
                statement3.setString(2, "%" + i.getProduct().getProduct_id() + "%");
                statement3.executeUpdate();
            }
        } catch (SQLException e) {
        }
    }
}
