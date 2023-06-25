/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class product {
    private int cate_id;
    private String product_id;
    private String product_name;
    private String brand;
    private int price;
    private int sale_percent;
    private int quantity;
    private String img;
    private String description;

    public product() {
    }

    public product(int cate_id, String product_id, String product_name, String brand, int price, int sale_percent, int quantity, String img, String description) {
        this.cate_id = cate_id;
        this.product_id = product_id;
        this.product_name = product_name;
        this.brand = brand;
        this.price = price;
        this.sale_percent = sale_percent;
        this.quantity = quantity;
        this.img = img;
        this.description = description;
    }

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSale_percent() {
        return sale_percent;
    }

    public void setSale_percent(int sale_percent) {
        this.sale_percent = sale_percent;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "product{" + "cate_id=" + cate_id + ", product_id=" + product_id + ", product_name=" + product_name + ", brand=" + brand + ", price=" + price + ", sale_percent=" + sale_percent + ", quantity=" + quantity + ", img=" + img + ", description=" + description + '}';
    }
    
}
