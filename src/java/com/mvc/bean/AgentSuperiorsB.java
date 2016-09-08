/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.bean;
import java.text.SimpleDateFormat;
import java.util.Date;
/** 
 *
 * @author alpha
 */
public class AgentSuperiorsB {
    private String Category;
    private String Code;
    private String Branch;
    private String Name;
    private String NepName;
    private String Address;
    private String AgentCode;
    private String Phone;
    private Date QualifyDate;
    private String Status;
    private Date RenewalDate;
    private String Mobile;
    private String SuperiorManagerCode;
    private String CommPayType;
    private String SeniorManagerCode;

    public AgentSuperiorsB() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * @return the Category
     */
    public String getCategory() {
        return Category;
    }

    /**
     * @param Category the Category to set
     */
    public void setCategory(String Category) {
        this.Category = Category;
    }

    /**
     * @return the Code
     */
    public String getCode() {
        return Code;
    }

    /**
     * @param Code the Code to set
     */
    public void setCode(String Code) {
        this.Code = Code;
    }

    /**
     * @return the Branch
     */
    public String getBranch() {
        return Branch;
    }

    /**
     * @param Branch the Branch to set
     */
    public void setBranch(String Branch) {
        this.Branch = Branch;
    }

    /**
     * @return the Name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.Name = Name;
    }

    /**
     * @return the NepName
     */
    public String getNepName() {
        return NepName;
    }

    /**
     * @param NepName the NepName to set
     */
    public void setNepName(String NepName) {
        this.NepName = NepName;
    }

    /**
     * @return the Address
     */
    public String getAddress() {
        return Address;
    }

    /**
     * @param Address the Address to set
     */
    public void setAddress(String Address) {
        this.Address = Address;
    }

    /**
     * @return the AgentCode
     */
    public String getAgentCode() {
        return AgentCode;
    }

    /**
     * @param AgentCode the AgentCode to set
     */
    public void setAgentCode(String AgentCode) {
        this.AgentCode = AgentCode;
    }

    /**
     * @return the Phone
     */
    public String getPhone() {
        return Phone;
    }

    /**
     * @param Phone the Phone to set
     */
    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    /**
     * @return the QualifiyDate
     */
    public Date getQualifiyDate() {
        return QualifyDate;
    }

    /**
     * @param QualifiyDate the QualifiyDate to set
     */
    public void setQualifiyDate(Date QualifiyDate) {
        this.QualifyDate = QualifiyDate;
    }

    /**
     * @return the Status
     */
    public String getStatus() {
        return Status;
    }

    /**
     * @param Status the Status to set
     */
    public void setStatus(String Status) {
        this.Status = Status;
    }

    /**
     * @return the RenewalDate
     */
    public Date getRenewalDate() {
        return RenewalDate;
    }

    /**
     * @param RenewalDate the RenewalDate to set
     */
    public void setRenewalDate(Date RenewalDate) {
        this.RenewalDate = RenewalDate;
    }

    /**
     * @return the Mobile
     */
    public String getMobile() {
        return Mobile;
    }

    /**
     * @param Mobile the Mobile to set
     */
    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    /**
     * @return the SuperiorManagerCode
     */
    public String getSuperiorManagerCode() {
        return SuperiorManagerCode;
    }

    /**
     * @param SuperiorManagerCode the SuperiorManagerCode to set
     */
    public void setSuperiorManagerCode(String SuperiorManagerCode) {
        this.SuperiorManagerCode = SuperiorManagerCode;
    }

    /**
     * @return the CommPayType
     */
    public String getCommPayType() {
        return CommPayType;
    }

    /**
     * @param CommPayType the CommPayType to set
     */
    public void setCommPayType(String CommPayType) {
        this.CommPayType = CommPayType;
    }

    /**
     * @return the SeniorManagerCode
     */
    public String getSeniorManagerCode() {
        return SeniorManagerCode;
    }

    /**
     * @param SeniorManagerCode the SeniorManagerCode to set
     */
    public void setSeniorManagerCode(String SeniorManagerCode) {
        this.SeniorManagerCode = SeniorManagerCode;
    }
    
    public AgentSuperiorsB(String Category,String Code,String Branch,String Name,String NepName,String Address,String AgentCode,
    String Phone,Date QualifyDate,String Status,Date RenewalDate,String Mobile,String SuperiorManagerCode,
    String CommPayType,String SeniorManagerCode){
        this.Category=Category;
        this.Code=Code;
        this.Branch=Branch;
        this.Name=Name;
        this.NepName=NepName;
        this.Address=Address;
        this.AgentCode=AgentCode;
        this.Phone=Phone;
        this.QualifyDate=QualifyDate;
        this.Status=Status;
        this.RenewalDate=RenewalDate;
        this.Mobile=Mobile;
        this.SuperiorManagerCode=SuperiorManagerCode;
        this.CommPayType=CommPayType;
        this.SeniorManagerCode=SeniorManagerCode;
    }
    
    public String toString(){
        return "AgentSup[Category="+Category+",Code="+Code+",Branch="+Branch+",Name="+Name+",NepName="+NepName+",Address="+Address
                +",AgentCode="+AgentCode+",Phone="+Phone+",QualifyDate="+QualifyDate+",Status="+Status+",RenewalDate="+RenewalDate
                +",Mobile="+Mobile+",SuperiorManagerCode="+SuperiorManagerCode+",CommPayType="+CommPayType+",SeniorManagerCode="+SeniorManagerCode+"]";
    }

    public void setQualifiyDate(SimpleDateFormat qlfy) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        this.QualifyDate = QualifyDate;
    }
}
