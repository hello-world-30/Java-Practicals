/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyOwnPackage;

import javax.ejb.Stateless;

/**
 *
 * @author Admin
 */
@Stateless
public class CCMySessionBean {
    
    public CCMySessionBean() {}
    public double rupeesToDollar(double a) {
        return a / 88.07;
    }
    public double dollarToRupees(double a) {
        return a * 88.07;
    }
}
