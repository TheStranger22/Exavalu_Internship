/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Role;
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
public class RoleService {

    public static RoleService roleService = null;

    public static RoleService getInstance() {
        if (roleService == null) {
            return new RoleService();
        } else {
            return roleService;
        }
    }

    public static ArrayList getAllRoles() {
        ArrayList roleLIst = new ArrayList();
        try {

            Connection con = JDBCConnectionManager.getConnection();

            String sql = "Select * from roles";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Role role = new Role();

                role.setRoleId(rs.getInt("rolesId"));
                role.setRoleName(rs.getString("rolesName"));

                roleLIst.add(role);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return roleLIst;

    }
}
