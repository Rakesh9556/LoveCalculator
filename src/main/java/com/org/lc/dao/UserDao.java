package com.org.lc.dao;

import com.org.lc.api.UserRegistrationDto;
import com.org.lc.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Arrays;

public class UserDao {

    public void registerUser(UserRegistrationDto userInfoDto) throws Exception {

        final String sql = "INSERT into user (fullname, username, password, country, hobby) values (?, ?, ?, ?, ?);";

        try(Connection conn = DbConfig.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {

            st.setString(1, userInfoDto.getFullName());
            st.setString(2, userInfoDto.getUserName());
            st.setString(3, Arrays.toString(userInfoDto.getPassword()));


            int rowsAffected = st.executeUpdate();

            if(rowsAffected > 0) {
                System.out.println("User registered successfully");
            }
            else {
                System.out.println("User registration failed");
            }
        }
        catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
}
