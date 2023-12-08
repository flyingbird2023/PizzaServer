/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ibb.model;

/**
 *
 * @author Teilnehmer
 */


public class Customer {
    private String firstname;
    private String lastname;
    private String adresse;
    private String plz;
    private String city;
    private String mobile;
      

    public void Customer() {
    }

    public void Custmer(String firstname, String lastname,String adresse,String plz,String city,String mobile) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.adresse=adresse;
        this.plz=plz;
        this.city=city;
        this.mobile=mobile;
    }
    
    

    public String getFirstname() {
        return firstname;
    }
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAdresse() {
        return adresse;
    }
    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
 
    public String getPlz() {
        return plz;
    }
    public void setPlz(String plz) {
        this.plz = plz;
    }
   
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
   
    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

}
