/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;
import com.mvc.bean.AgentDetailsB;
import java.util.List;
/**
 *
 * @author saurav.paudel
 */
public interface AgtDetailsDAO {
    
    public void addAgentDetails(AgentDetailsB ads);
    public void deleteAgent(String AgtCode);
    public void updateAgent(AgentDetailsB adb);
    public List<AgentDetailsB> getAllAgents();
    public AgentDetailsB getAgentByID(int AgtCode);
    
}
