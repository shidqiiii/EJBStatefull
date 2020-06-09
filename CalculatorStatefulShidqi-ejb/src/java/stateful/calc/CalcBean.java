/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stateful.calc;

import javax.ejb.Stateful;

/**
 *
 * @author shidqi
 */
@Stateful(mappedName = "answer")
public class CalcBean implements CalcBeanRemote {

    double answer = 0;
    
    @Override     
    public double getAns() {  
        return answer;  
    }
    @Override     
    public void add(double addend) {  
        answer += addend;   
    }    
    @Override    
    public void subtract(double subtrahend) {         
        answer -= subtrahend;
    }     
    @Override     
    public void multiply(double factor) {         
        answer = answer * factor;    
    }     
    @Override     
    public void divide(double divisor) {         
        answer = answer / divisor;  
    }     
    @Override     
    public void clear() {         
        answer = 0;  
    }
}
