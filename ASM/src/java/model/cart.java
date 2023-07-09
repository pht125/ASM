/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class cart {

    private List<item> items;

    public cart() {
        items = new ArrayList<>();
    }

    public void setItems(List<item> items) {
        this.items = items;
    }

    public List<item> getItems() {
        return items;
    }

    public int getQuantityById(String id){
        return getItemById(id).getQuantity();
    }
    private item getItemById(String id) {
        for (item i : items) {
            if (i.getProduct().getProduct_id().equals(id)) {
                return i;
            }
        }
        return null;
    }

    public void addItem(item t) {
        if (getItemById(t.getProduct().getProduct_id()) != null) {
            item m = getItemById(t.getProduct().getProduct_id());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(String id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public int getTotalPrice() {
        int t = 0;
        for (item i : items) {
            t = t + (i.getPrice() * i.getQuantity());
        }
        return t;
    }

    private product getProductById(String id, List<product> list) {
        for (product i : list) {
            if (i.getProduct_id().equals(id)) {
                return i;
            }
        }
        return null;
    }

    public cart(String txt, List<product> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("\\|");
                
                for (String i : s) {
                    String[] n = i.split("-");
                    
                    String id = n[0];
                    int quantity = Integer.parseInt(n[1]);
                    product p = getProductById(id, list);
                    item t = new item(p, quantity, (p.getPrice()*(100-p.getSale_percent())/100));
                    addItem(t);
                    
                }
            }
        } catch (NumberFormatException e) {
        }
    }
//    public int size(String txt, List<product> list) {
//        items = new ArrayList<>();
//        int size = 0;
//        try {
//            if (txt != null && txt.length() != 0) {
//                String[] s = txt.split("\\|");
//                for (String i : s) {
//                    String[] n = i.split("-");
//                    int quantity = Integer.parseInt(n[1]);
//                    size = size + quantity;
//                }
//                System.out.println(size);
//                return size;
//            }
//        } catch (NumberFormatException e) {
//        }
//        return 0;
//    }
}
