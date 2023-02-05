/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Department;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Avijit Chattopadhyay
 */
public class DepartmentService {

    public static DepartmentService departmentService = null;

    public static DepartmentService getInstance() {
        if (departmentService == null) {
            return new DepartmentService();
        } else {
            return departmentService;
        }
    }

    public static ArrayList getAllDepartment() {

        ArrayList deptList = new ArrayList();

        try {

            Connection con = JDBCConnectionManager.getConnection();

            String sql = "Select * from department";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Department dept = new Department();

                dept.setDepartmentId(rs.getInt("departmentId"));
                dept.setDepartmentName(rs.getString("departmentName"));

                deptList.add(dept);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return deptList;
    }

}
