package com.servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateDao {
	public String Update(Pojo p) throws SQLException
	{
		String sql = "update student set name=?, divison=?, contact=? where id=?";
		DBAdapter dba = new DBAdapter();
		Connection con = dba.dbConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, p.getName());
		pst.setString(2, p.getDivison());
		pst.setString(3, p.getContact());
		pst.setInt(4, p.getId());
		int i = pst.executeUpdate();
		if(i>0)
			return "success";
		else
			return "error";
	}
}
