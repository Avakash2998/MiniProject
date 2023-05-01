
package com.logitone.webapp.miniproject.dao;

import java.sql.*;

import com.logitone.webapp.miniproject.entities.User;
import com.logitone.webapp.miniproject.helper.ConnectionProvider;

public class UserDao {
	private Connection con;

	public UserDao() {
		this.con = ConnectionProvider.getConnection();
	}  

	// method to insert user to database:
	public boolean saveUser(User user) {
		boolean f = false;
		try {
			// user -->DataBase
			String query = "INSERT INTO user(name, email, password, gender, about) values (?, ?, ?, ?, ?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	// get user by useremail and userpassword:

	public User getUserByEmailAndPassword(String email, String password) {

		User user = null;

		try {

			String query = "SELECT * FROM user WHERE email = '" + email + "' AND password = '" + password + "'";
			Statement stmt = con.createStatement();
			ResultSet set = stmt.executeQuery(query);
			while (set.next()) {
				user = new User();

				String name = set.getString("name");
				// set to user object
				user.setName(name);

				user.setId(set.getInt("id"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setProfile(set.getString("profile"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}

	// uPDATE USER
	public boolean updateUser(User user) {
		boolean f = false;
		try {

			String query = "UPDATE user SET name = ?, email = ?, password = ?, gender = ?, about = ?, profile = ? WHERE id = ?";
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, user.getName());
			p.setString(2, user.getEmail());
			p.setString(3, user.getPassword());
			p.setString(4, user.getGender());
			p.setString(5, user.getAbout());
			p.setString(6, user.getProfile());
			p.setInt(7, user.getId());
			p.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates and open the template
 * in the editor.
 */
