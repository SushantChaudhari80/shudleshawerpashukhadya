package com.project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.connection.ConnectionProvider;
import com.project.service.UserService;


@Controller
public class NewUserController {

	@Autowired
	UserService service;
	 
	@PostMapping("/addUser")
    public ResponseEntity<String> addNewUser(@RequestParam String cname, @RequestParam String mobile, @RequestParam String address) {
    
        System.out.println("Received data: cname=" + cname + ", mobile=" + mobile + ", address=" + address);

       String msg = service.addUser(cname , mobile , address);
       System.out.println("DataEntry status : "+ msg);
        return ResponseEntity.ok("Form data received successfully to addUser");
    }
	
	 
		@PostMapping("/addStock")
	    public ResponseEntity<String> addStock(@RequestParam String pname, @RequestParam String qty) {

	       String msg = service.addStock(pname , qty);
	       System.out.println("DataEntry status : "+ msg);
	        return ResponseEntity.ok("Form data received successfully to addStock");
	    }
	
		@PostMapping("/updateStock")
	    public ResponseEntity<String> updateStock(@RequestParam String pid, @RequestParam String qty ,  @RequestParam int type) {

	    
	      System.out.println(pid + qty + type);
	      String msg = service.updateStock(pid , qty , type);
	        return ResponseEntity.ok("Form data received successfully to updateStock");
	    }
		
		@PostMapping("/addEntry")
	    public ResponseEntity<String> doTransaction(@RequestParam String pid, @RequestParam String qty ,  @RequestParam String comment ,
	    		@RequestParam String amount , @RequestParam int cid , @RequestParam String flag) {
        if(flag.equals("Y")) {
	      System.out.println("product ID: "+pid +" QTY:"+ qty+" COMMENT:"+ comment +" AMOUNT:"+ amount +" CUSTOMERID : "+ cid+" TRN TYPE"+flag);
	      String msg = service.addTransactionEntry(pid , qty , comment , amount , cid , flag);
	      return ResponseEntity.ok("Form data received successfully to addEntry");
        }else {
	     service.addTransactionEntry(amount, cid, flag);
	        return ResponseEntity.ok("Form data received successfully to addEntry");
        }
	    }
}

