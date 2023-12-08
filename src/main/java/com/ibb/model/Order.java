/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ibb.model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author zhanfei
 */
public class Order {

    private Map<Product, Integer> bestelltePizzen = new HashMap<>();

    public Map<Product, Integer> getBestelltePizzen() {
        return bestelltePizzen;
    }

    public void setBestelltePizzen(Map<Product, Integer> bestelltePizzen) {
        this.bestelltePizzen = bestelltePizzen;
    }

    public void addPizza(Product product, Integer count) {
        bestelltePizzen.put(product, count);
    }

}
