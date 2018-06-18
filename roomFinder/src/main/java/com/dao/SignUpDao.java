package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.Mysql;
import com.model.UserBean;

public class SignUpDao {
	public String signUpUser(UserBean signUpBean) {


		String firstname=signUpBean.getFirstname();
		String lastname=signUpBean.getLastname();
		String phone=signUpBean.getPhone();
		String address=signUpBean.getAddress();
		String email=signUpBean.getEmail();
		String password=signUpBean.getPassword();
		Connection con=null;
		System.out.println();
		try{
			con=Mysql.createConnection();

			String sql="insert into userbean(firstname,lastname,phone,address,email,password) values(?,?,?,?,?,?)";

			PreparedStatement  ps = con.prepareStatement(sql);

			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3,phone);
			ps.setString(4, address);
			ps.setString(5, email);
			ps.setString(6, password);


			int i  = ps.executeUpdate();

			if(i!=0) 
				return "sucess";

		}

		catch(SQLException e){
			System.out.println(e);
		} 

		return "Error";

	}      

}
