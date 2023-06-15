/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class bill {
    private int bill_id;
    private int account_id;
    private Date order_date;
    private int total_price;

    public bill() {
    }

    public bill(int bill_id, int account_id, Date order_date, int total_price) {
        this.bill_id = bill_id;
        this.account_id = account_id;
        this.order_date = order_date;
        this.total_price = total_price;
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    @Override
    public String toString() {
        return "bill{" + "bill_id=" + bill_id + ", account_id=" + account_id + ", order_date=" + order_date + ", total_price=" + total_price + '}';
    }
    
}
