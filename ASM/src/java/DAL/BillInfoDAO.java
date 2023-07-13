/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.bill_info;

/**
 *
 * @author Admin
 */
public class BillInfoDAO extends BaseDAO {

    public void insertOrderDetail(bill_info billDetail) {
        String sql = "INSERT INTO bill VALUES(?,?,?)"; // (orderID, productID, quantity)
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, billDetail.getBill_id() );
            statement.setInt(2, billDetail.getProduct_id());
            statement.setInt(3, billDetail.getQuantity_bill());
            statement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
