package com.test.servlet; 
 
import java.io.File;
import java.io.IOException; 
import java.io.PrintWriter;
import java.util.List; 
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;  
import org.apache.commons.fileupload.FileItem; 
import org.apache.commons.fileupload.disk.DiskFileItemFactory; 
import org.apache.commons.fileupload.servlet.ServletFileUpload; 

import com.test.util.ImageResizer;
 
public class UploadServlet extends HttpServlet { 
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException 
    {     	
        System.out.println("UploadServlet invoked. Here are all uploaded files: ");
        request.setCharacterEncoding("utf-8");  //���ϸ� �ѱ� ���� ������ ���� �߰�
        String savePath = "C:/imgdata/";  //������ ������ ������ �������
        boolean isSuccess = false;   //���ε� ��������
        int imgWidth = 0;
        String saveFileName = "";        
        String newFileName = "���������������ϸ�";
        try {         
        	
            List items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);            
            System.out.println("items.size : " + items.size());
            for (int i=0; i< items.size(); i++) {
            	FileItem item = (FileItem)items.get(i);     
				
				//file���� �Ķ���� ���� ���θ� Ȯ���Ѵ�.
                if (!item.isFormField()) {
					//�ش� ������ ������ �����Ѵ�.
                	saveFileName = savePath + item.getName();                	
        			File savedFile = new File(saveFileName);
        			item.write(savedFile);        			                                  
                }else {
					//�̹��� ���� �Ķ���͸� �����Ѵ�.
                	if(item.getFieldName().equals("img_width")) {
                		imgWidth = Integer.parseInt(item.getString());
                	}
                }
            } 
            
            //�̹��� ����� �����Ѵ�.
            if(imgWidth != 0) {
            	System.out.println("Change ImageSize: "+imgWidth);
            	StringBuffer updateFileName = new StringBuffer();
            	updateFileName.append(savePath);
    			updateFileName.append(newFileName);
    			updateFileName.append(saveFileName.substring(saveFileName.lastIndexOf(".")));
    			ImageResizer.run(saveFileName, updateFileName.toString(), imgWidth, 1.0F);
    		    File orgFile = new File(saveFileName);
    		    File realFile = new File(updateFileName.toString());
    		    if(realFile.exists()) {
    		    	orgFile.delete();   
    		    	isSuccess = true;
    		    }    			
            }
        } catch (Exception e) { 
            throw new ServletException(e); 
        } finally {
        	PrintWriter out = response.getWriter();
        	out.print("{");
        	out.print("success: "+isSuccess+", newFileName: '"+(newFileName+saveFileName.substring(saveFileName.lastIndexOf(".")))+"'");
        	out.print("}");
        	out.flush();
        }
    } 
} 