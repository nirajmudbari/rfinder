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

import com.dao.AddBookDao;
import com.fileutils.TextReader;
import com.model.Book;

import javax.servlet.http.Part;

/**
 * A Java servlet that handles file upload from client.
 * @author www.codejava.net
 * 
 */
@WebServlet(urlPatterns = "/uploadServlet")
//@MultipartConfig(maxFileSize = 34000000)

@MultipartConfig(
		fileSizeThreshold=1024*1024*10, //10MB
		maxFileSize=1024*1024*50, //50mb
		maxRequestSize=1024*1024*100//100MB
	)



public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "D:/upload";
	int id;
	
	@Override

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String path;
		Part ti=request.getPart("ISBN");
		String isbn=(String)TextReader.readtext(ti);
		//int isbn=Integer.parseInt(isb);
		Part des=request.getPart("Book_Title");
		String title=(String) TextReader.readtext(des);
		Part cat=request.getPart("Book_Author");
		String author=(String) TextReader.readtext(cat);
		Part yr=request.getPart("Year_of_Publication");
		String year=(String) TextReader.readtext(yr);
		


		
		Part uploadFile = request.getPart("Image");
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
        Book bk=new Book();
        System.out.println(path);
        System.out.println(year+"+"+author);
        bk.setISBN(isbn);
        bk.setBook_Title(title);
        bk.setBook_Author(author);
        bk.setImage(path);
        bk.setYear_of_Publication(year);
      
        bk=AddBookDao.setinfo(bk);
        
		request.getRequestDispatcher("/Admin.jsp").forward(request, response);
        
	}
}
