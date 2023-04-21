package com.servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteDao {
	public String Delete(int id) throws SQLException
	{
		String sql = "delete from student where id=?";
		DBAdapter dba = new DBAdapter();
		Connection con = dba.dbConnect();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, id);
		int i = pst.executeUpdate();
		if(i>0)
			return "success";
		else
			return "error";
		
	}
}
