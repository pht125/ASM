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
import model.bill;

/**
 *
 * @author Admin
 */
public class BillDAO extends BaseDAO {

    public int insertOrder(bill bill) {
        String sql = "INSERT INTO bill VALUES(?,?,?,?)"; // (accountID, orderDate, address, totalPrice)
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, bill.getAccount_id());
            ps.setDate(2, bill.getOrder_date());
            ps.setString(3, bill.getAddress());
            ps.setInt(4, bill.getTotal_price());
            
            ps.executeUpdate();
            // i want return orderID
            String sql2 = "SELECT MAX(bill_id) AS billID FROM bill";
            PreparedStatement ps2 = connection.prepareStatement(sql2);
            ResultSet rs = ps2.executeQuery();
            if (rs.next()) {
                return rs.getInt("bill_id");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return -1;
    }

    public List<Integer> getAllOrderIDByAccountID(int accountID) {
        String sql = "SELECT bill_id FROM bill WHERE account_id = ?";
        List<Integer> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, accountID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt("bill_id"));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;
    }
}
