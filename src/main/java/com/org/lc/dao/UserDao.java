package com.org.lc.dao;

import com.org.lc.api.UserInfoDto;
import com.org.lc.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {

    public void registerUser(UserInfoDto userInfoDto) throws Exception {

        final String sql = "INSERT into user (fullname, username, password, country, hobby) values (?, ?, ?, ?, ?);";

        try(Connection conn = DbConfig.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {

            st.setString(1, userInfoDto.getFullName());
            st.setString(2, userInfoDto.getUserName());
            st.setString(3, userInfoDto.getPassword());
            st.setString(4, userInfoDto.getCountry());
            st.setString(5, userInfoDto.getHobby());

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
