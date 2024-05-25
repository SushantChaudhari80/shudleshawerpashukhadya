package com.project.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.project.connection.ConnectionProvider;


public class UserService {
  
   
	public String addUser(String cname, String mobile, String address) {
		Connection con;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement p1=con.prepareStatement("insert into customer (cname , caddress , mobile , balance) values (? ,?,?,?)");
			p1.setString(1, cname);
			p1.setString(2, address);
			p1.setString(3, mobile);
			p1.setString(4, "0");
			
			int i = p1.executeUpdate();
			return "ok";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getLocalizedMessage();
		}
		
	}

	public String addStock(String pname, String qty) {
		Connection con;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement p1=con.prepareStatement("insert into stock(pname , qty) values(?, ?)");
			p1.setString(1, pname);
			p1.setString(2, qty);
			
			int i = p1.executeUpdate();
			return "ok";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getLocalizedMessage();
		}
	}

	public String updateStock(String pid, String qty, int type) {
		Connection con;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement p1=con.prepareStatement("select * from stock where pid=?");
			p1.setString(1,String.valueOf(pid));
			
			ResultSet rs= p1.executeQuery();
			
			
			int stock =0;
			rs.next();
			stock= Integer.parseInt(rs.getString("qty"));
			
			if(type==1) {
				stock = stock +Integer.parseInt(qty);
			}else {
				stock = stock -Integer.parseInt(qty);
			}
			
			PreparedStatement p2=con.prepareStatement("update stock set qty=? where pid = ?");
			p2.setString(1,String.valueOf(stock));
			p2.setString(2, pid);
			int i = p2.executeUpdate();
			return "ok";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getLocalizedMessage();
		}
	}

	public String addTransactionEntry(String pid, String qty, String comment, String amount, int cid, String flag) {
		System.out.println("Inside addTransactionEntry() :  ");
		Connection con;
		
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String date = currentDateTime.format(formatter);
        
        // N = you got  , Y= you gave
        
        String balance = getBalance(amount, cid, flag);
        System.out.println("fetch balance from getbalance meth () :"+balance);
        
        try {
			con = ConnectionProvider.getConnection();
			
			
			PreparedStatement p2=con.prepareStatement("select * from stock where pid=?");
			p2.setString(1, pid);
			ResultSet rs = p2.executeQuery();
			rs.next();
			String quantity = rs.getString("qty");
			String final_qty = String.valueOf(   Integer.parseInt(quantity) - Integer.parseInt(qty) );
			
			
			
			PreparedStatement p1=con.prepareStatement("insert into transaction_history(product_name,date_time,comment,amount,t_type,cid)"
					+ " values (?,?,?,?,?,?)");
			p1.setString(1,rs.getString("pname") + ":"+qty );
			p1.setString(2, date);
			p1.setString(3,comment);
			p1.setString(4, amount);
			p1.setString(5,flag);
			p1.setInt(6, cid);
			  
			int i = p1.executeUpdate();
			System.out.println("flag from database to create transaction: "+ i);
			
			
			
			PreparedStatement p3=con.prepareStatement("update stock set qty=? where pid = ?");
			p3.setString(1, final_qty);
			p3.setString(2,pid);
			
			int j =p3.executeUpdate();
			System.out.println("flag from database to update stcok : "+ j);
			return "OK";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return e.getLocalizedMessage();
		}
        
	}
	
	public String getBalance(String amount , int cid ,String flag) {
		System.out.println("Inside getBalance()");
		Connection con;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement p1=con.prepareStatement("select * from customer where cid=?");
			p1.setInt(1, cid);
			ResultSet rs= p1.executeQuery();
			rs.next();
			String balance = rs.getString("balance");
			System.out.println("from getBalance() :"+balance);
			int blc;
			if(flag.equals("Y")) {
				if(balance.equals(null)) {
					blc =-(Integer.parseInt(rs.getString("balance")));
				}else {
					 blc = Integer.parseInt(rs.getString("balance")) - Integer.parseInt(amount);
				}
				
			}else {
				if(balance.equals(null)) {
					blc = Integer.parseInt(rs.getString("balance"));
				}else {
					blc =  Integer.parseInt(rs.getString("balance")) + Integer.parseInt(amount);
				}
			}
			PreparedStatement p2=con.prepareStatement("update customer set balance=? where cid=?");
			p2.setString(1,String.valueOf(blc));
			p2.setInt(2, cid);
			int i = p2.executeUpdate();
			
			return String.valueOf(blc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;		
	}

	public void addTransactionEntry(String amount, int cid, String flag) {
       Connection con;
		
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String date = currentDateTime.format(formatter);
        
        // N = you got  , Y= you gave
        
        String balance = getBalance(amount, cid, flag);
        System.out.println("fetch balance from getbalance meth () :"+balance);
        try {
			con = ConnectionProvider.getConnection();
			PreparedStatement p1=con.prepareStatement("insert into transaction_history(date_time,amount,t_type,cid)"
					+ " values (?,?,?,?)");
			p1.setString(1,date);
			p1.setString(2, amount);
			p1.setString(3,flag);
			p1.setInt(4, cid); 
			int i = p1.executeUpdate();
			System.out.println("flag from database to create transaction: "+ i);
			
        }catch(Exception e) {
        	System.out.println(e.getLocalizedMessage());
        }
			
	}
}
