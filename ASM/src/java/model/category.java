/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class category {
//    cate_id int PRIMARY KEY identity(1,1),
//	[name] nvarchar(50),
//	[description] nvarchar(max)
    private int cate_id;
    private String name;
    private String description;

    public category() {
    }

    public category(int cate_id, String name, String description) {
        this.cate_id = cate_id;
        this.name = name;
        this.description = description;
    }

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "category{" + "cate_id=" + cate_id + ", name=" + name + ", description=" + description + '}';
    }
    
    
}
