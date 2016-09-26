/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;

import java.util.List;
import com.mvc.bean.AgentTrainingSchedule;
/**
 *
 * @author saurav.paudel
 */
public interface TrainingDAO {
    
    public void addTraining(AgentTrainingSchedule ats);
    public void deleteTraining(String tid);
    public void updateTraining(AgentTrainingSchedule ats);
    public List<AgentTrainingSchedule> getallTrainings();
    public AgentTrainingSchedule getTrainingById(String tid);

    public Object getTrainingALLPARAM(String tid, String ven, String stdate, String eddate);
    
}
