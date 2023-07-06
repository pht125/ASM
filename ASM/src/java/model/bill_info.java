/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class bill_info {
    private int bill_id;
    private int product_id;
    private int quantity_bill;

    public bill_info() {
    }

    public bill_info(int bill_id, int product_id, int quantity_bill) {
        this.bill_id = bill_id;
        this.product_id = product_id;
        this.quantity_bill = quantity_bill;
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity_bill() {
        return quantity_bill;
    }

    public void setQuantity_bill(int quantity_bill) {
        this.quantity_bill = quantity_bill;
    }



    @Override
    public String toString() {
        return "bill_info{" + "bill_id=" + bill_id + ", product_id=" + product_id + ", quantity=" + quantity_bill + '}';
    }
    
    
}
