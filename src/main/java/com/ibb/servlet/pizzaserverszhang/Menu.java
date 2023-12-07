/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ibb.servlet.pizzaserverszhang;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author zhanfei
 */
public class Menu {
    private List<Product> productList;
    public Menu(){
        productList=new ArrayList();
        productList.add(new Product(1,"Pizza Napoli", 7.99));
        productList.add(new Product(2,"Pizza Frutti di Mare", 7.99));
        productList.add(new Product(3,"Pizza Thunfisch", 7.99));
        productList.add(new Product(4,"Pizza Hawaii", 7.99));
        productList.add(new Product(5,"Pizza PilzSchinken", 7.99));
        productList.add(new Product(6,"Pizza Geriechische", 7.99));
        productList.add(new Product(7,"Pizza Kürbis", 7.99));
        productList.add(new Product(8,"Pizza Margherita", 7.99));
    }
    public List<Product> getProductList(){
        return productList;
    }
    
}
