/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stateful.calc;

import javax.ejb.Remote;

/**
 *
 * @author shidqi
 */
@Remote
public interface CalcBeanRemote {
    public void subtract(double subtrahend);
    public void multiply(double factor);
    public void divide(double divisor);
    public void add(double addend); 
    public void clear(); 
    public double getAns();
    
}
