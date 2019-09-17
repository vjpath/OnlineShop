package com.onlineShopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.onlineShopping.config.DBConnect;
import com.onlineShopping.pojo.User;

public class UserDao {
	Connection con=DBConnect.getConnect();

	public boolean adduser(User u)
	{
		String sql="insert into user values (?,?,?,?)";

		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,u.getName());
			ps.setString(2,u.getContact());
//			ps.setString(3,u.getAddress());
			ps.setString(3,u.getEmail());
			ps.setString(4,u.getPass());
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
	public boolean deletuser(String emailid) 
	{
		String sql="delete from newuser where EMAIL=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, emailid);
			int i=ps.executeUpdate();
			System.out.println(" oPTION "+emailid+"   "+i);
			if(i>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;



	} 
	public boolean edituser(User u)
	{
		String sql="update newuser set name=?,contact=?,pass=? where email=?;";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,u.getName());
			ps.setString(2,u.getContact());
//			ps.setString(3,u.getAddress());

			ps.setString(3,u.getPass());
			ps.setString(4,u.getEmail());
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;

	}
	public List<User> getlist()
	{
		List<User> li=new ArrayList<>();
		String sql="select * from user";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				User u=new User();
				u.setName(rs.getString(1));
				u.setContact(rs.getString(2));
				u.setAddress(rs.getString(3));
				u.setEmail(rs.getString(4));
//				u.setPass(rs.getString(5));
				

				li.add(u);
			}


			return li;
		}
		catch (Exception e) {
			e.printStackTrace();
		}

		return null;	
	}


	public User getUserById(String email)
	{
		User u=new User();
		String sql="select * from user where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				
				u.setName(rs.getString(1));
				u.setContact(rs.getString(2));
				u.setAddress(rs.getString(3));
				u.setEmail(rs.getString(4));
//				u.setPass(rs.getString(5));
				

			}


			return u;
		}
		catch (Exception e) {
			e.printStackTrace();
		}

		return null;	
	}

		
	public User getLogin(String uname,String password) {
		String sql="SELECT email,pass FROM USER  where email=? and pass=?";
		User u=new User();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				u.setEmail(rs.getString(1));
				u.setPass(rs.getString(2));
			}
			return u;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


}
