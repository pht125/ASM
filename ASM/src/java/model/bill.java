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
    private String address;
    private int total_price;
    private int status;

    public bill() {
    }

    public bill(int bill_id, int account_id, Date order_date, String address, int total_price, int status) {
        this.bill_id = bill_id;
        this.account_id = account_id;
        this.order_date = order_date;
        this.address = address;
        this.total_price = total_price;
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
