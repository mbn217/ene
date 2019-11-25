package edu.umgc.cmsc495.ene.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.umgc.cmsc495.ene.model.UserModel;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private DataSource dataSource;

	@Override
	public Integer registerUser(UserModel user) {
		int id = 0;
		String query = "INSERT INTO users (username, password, email) VALUES (?,?,?)";
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            id = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		if(id > 0) {
			return id;
		}
		else {
			return null;
		}
	}

	@Override
	public UserModel login(String userName, String password) {
		
		UserModel user = null;
		
		String query = "SELECT id, username, password, email from users "
				+ "where username = ? and password = ?";
		
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query)) {
		
            ps.setString(1, userName);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String email = rs.getString("email");
                
                user = new UserModel(id, userName, password, email);
            }//end while
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return user;
	}
	
}
