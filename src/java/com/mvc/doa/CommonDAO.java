/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.doa;

import com.mvc.bean.CommonB;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author saurav.paudel
 */
public interface CommonDAO {
    public List<CommonB> getAllBranch();
    public List<CommonB> getAllAnchal();

    /**
     *
     * @return
     */
    public List<CommonB>getAllDistrict();
    public ResultSet getAllAnchal1();
}
