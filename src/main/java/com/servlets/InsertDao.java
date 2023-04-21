package com.servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertDao {
	public String Insert(Pojo p) throws SQLException
	{
		String sql = "insert into student(name,divison,contact)values(?,?,?)";
		DBAdapter dba = new DBAdapter();
		Connection con = dba.dbConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, p.getName());
		pst.setString(2, p.getDivison());
		pst.setString(3, p.getContact());
		int i = pst.executeUpdate();
		if(i>0)
			return "success";
		else
			return "error";
	}
}
