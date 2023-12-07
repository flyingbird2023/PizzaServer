/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Com.ibb.ctrl;

import com.ibb.servlet.pizzaserverszhang.Menu;
import com.ibb.servlet.pizzaserverszhang.Order;
import com.ibb.servlet.pizzaserverszhang.Product;
import jakarta.servlet.http.HttpServletRequest;
import java.net.http.HttpRequest;
import java.util.Enumeration;
import java.util.Map;

/**
 *
 * @author trainer
 */
public class PizzaServiceController {

    private Menu speisekarte;
    private Order bestellung;

    public PizzaServiceController() {
        speisekarte = new Menu();
        bestellung = new Order();
    }

    public Menu getSpeisekarte() {

        return speisekarte;
    }

    public void setSpeisekarte(Menu speisekarte) {
        this.speisekarte = speisekarte;
    }

    public Order getBestellung() {
        return bestellung;
    }

    public void setBestellung(Order bestellung) {
        this.bestellung = bestellung;
    }

    public void collectOrder(HttpServletRequest request) {
        Enumeration myEnum=request.getParameterNames();
        while (myEnum.hasMoreElements()) {
            String txt = (String) myEnum.nextElement();
            if (Integer.parseInt(request.getParameter(txt)) > 0) {
                ///out.print("<p>"+txt+":"+request.getParameter(txt)+"</p>");
                bestellung.getBestelltePizzen().put(getProduct(txt), Integer.parseInt(request.getParameter(txt)));
            }
        }

    }

    public double calculate(){
        double value=0;
        for(Map.Entry<Product,Integer> entry:bestellung.getBestelltePizzen().entrySet()){
            value+=entry.getKey().getPrice()*entry.getValue();
        }
        return value;
    }
    
    
    public Product getProduct(String id) {
        Product product = null;
        for (Product p : this.speisekarte.getProductList()) {
            if (p.getId() == Integer.parseInt(id)) {
                product = p;
                break;
            }
        }
        return product;
    }
}
