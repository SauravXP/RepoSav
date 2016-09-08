/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.bean;
import java.util.Date;
/**
 *
 * @author saurav.paudel
 */
public class AgentTrainingSchedule {
    //private int trainingID;
    private String trainingID;
    private String branch;
    private String venue;
    private Date stdate;
    private Date eddate;
    private String remarks;

    public AgentTrainingSchedule() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    /**
     * @return the trainingID
     */
    public String getTrainingID() {
        return trainingID;
    }

    /**
     * @param trainingID the trainingID to set
     */
   // public void setTrainingID(int trainingID) {
     public void setTrainingID(String trainingID) {
        this.trainingID = trainingID;
    }

    /**
     * @return the branch
     */
    public String getBranch() {
        return branch;
    }

    /**
     * @param branch the branch to set
     */
    public void setBranch(String branch) {
        this.branch = branch;
    }

    /**
     * @return the venue
     */
    public String getVenue() {
        return venue;
    }

    /**
     * @param venue the venue to set
     */
    public void setVenue(String venue) {
        this.venue = venue;
    }

    /**
     * @return the stdate
     */
    public Date getStdate() {
        return stdate;
    }

    /**
     * @param stdate the stdate to set
     */
    public void setStdate(Date stdate) {
        this.stdate = stdate;
    }

    /**
     * @return the eddate
     */
    public Date getEddate() {
        return eddate;
    }

    /**
     * @param eddate the eddate to set
     */
    public void setEddate(Date eddate) {
        this.eddate = eddate;
    }

    /**
     * @return the remarks
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * @param remarks the remarks to set
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public AgentTrainingSchedule(String trainingID, String branch, String venue, Date stdate, Date eddate, String remarks) {
        this.trainingID = trainingID;
        this.branch = branch;
        this.venue = venue;
        this.stdate = stdate;
        this.eddate = eddate;
        this.remarks = remarks;
    }
    
    public  String toString(){
        return "Training [trainingID=" + trainingID + ", branch=" + branch
                + ", stdate=" + stdate + ", eddate=" + eddate + ", remarks="
                + remarks + "]"; 
    }
}
