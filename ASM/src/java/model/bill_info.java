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
    private int quantity;
    private int price;

    public bill_info() {
    }

    public bill_info(int bill_id, int product_id, int quantity, int price) {
        this.bill_id = bill_id;
        this.product_id = product_id;
        this.quantity = quantity;
        this.price = price;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "bill_info{" + "bill_id=" + bill_id + ", product_id=" + product_id + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}
