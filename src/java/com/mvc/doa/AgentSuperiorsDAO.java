/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;
import java.util.List;
import com.mvc.bean.AgentSuperiorsB;
/**
 *
 * @author alpha
 */
public interface AgentSuperiorsDAO {
    
    public void addSuperiors(AgentSuperiorsB asb );
    public void deleteSuperiors(String Code);
    public void updateSuperiors(AgentSuperiorsB abs);
    public List <AgentSuperiorsB> getallSuperiors();
    public AgentSuperiorsB getSuperiorsbyID(String Code);
}
