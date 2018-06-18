package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.AddRestaurantDao;
import com.model.Restaurant;

import FileUtils.TextReader;

@WebServlet("/AddRestaurantServlet")


@MultipartConfig(
		fileSizeThreshold=1024*1024*10, //10MB
		maxFileSize=1024*1024*50, //50mb
		maxRequestSize=1024*1024*100//100MB
	)

public class AddRestaurantServlet extends HttpServlet {
	
   
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "D:/upload";
	int id;
	
	@Override

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String path;
//		Part ti=request.getPart("restaurantId");
//		 String restaurantId=(String)TextReader.readtext(ti);
//		
		Part des=request.getPart("name");
		String name=(String) TextReader.readtext(des);
		//Part cat=request.getPart("contact");
		//Double contact=(String.valueOf(contact)) TextReader.readtext(cat);
		Part yr=request.getPart("street");
		String street=(String) TextReader.readtext(yr);
		Part cr=request.getPart("city");
		String city=(String) TextReader.readtext(cr);
//		Part lat=request.getPart("latitude");
//		String latitude=(String) TextReader.readtext(lat);
//		Part lon=request.getPart("longitude");
//		String longitude=(String) TextReader.readtext(lon);
//		
		


		
		Part uploadFile = request.getPart("image");
		if(null == uploadFile) {
			System.out.println("Null obj");
			return;
		}
        InputStream inputStream = null;
        OutputStream outputStream = null;
        PrintWriter writer = response.getWriter();
        try {
        	File dest = new File(UPLOAD_DIRECTORY, UUID.randomUUID().toString()+".jpg");
            outputStream = new FileOutputStream(dest);
            inputStream = uploadFile.getInputStream();
            int read;
            final byte[] buffer = new byte[1024];
            while ((read = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, read);
            }
            path=dest.getAbsolutePath();
            System.out.println(dest.getAbsolutePath());
           // System.out.println(request.getServerName()+request.getServerPort());
        }finally {
            if(inputStream != null) inputStream.close();
            if(outputStream !=  null) outputStream.close();
            writer.close();
        }
        Restaurant rt=new Restaurant();
        System.out.println(path);
        //System.out.println(year+"+"+author);
       
        rt.setRestaurantname(name);
        //rt.setContact(contact);
        rt.setStreet(street);
        rt.setCity(city);
        rt.setImage(path);
        //rt.setLatitude();
        //rt.setLongitude(longitude);
      
        rt=AddRestaurantDao.setinfo(rt);
        
		request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        
	}
}
   
