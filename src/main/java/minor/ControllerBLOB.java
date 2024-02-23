//package minor;
//
//import java.io.IOException;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.commons.CommonsMultipartFile;
//
//import javax.servlet.http.HttpServlet;
//import java.io.InputStream;
//import java.sql.*;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//@Controller
//public class ControllerBLOB extends HttpServlet {
//
//    @RequestMapping(value = "/upload_documents", method = RequestMethod.GET)
//    public String Loadinsgpage() {
//        return "BLOB/upload_document";
//    }
//
//    @RequestMapping(value = "/displayblob", method = RequestMethod.GET)
//    public String Loadinsgspage() {
//        return "BLOB/view_docu";
//    }
//    
//    @RequestMapping(value = "/upload_successful", method = RequestMethod.POST)
//    public String submitresForm(HttpServletRequest request, 
//            HttpServletResponse response, 
//            @RequestParam("a") String a,
//            @RequestParam("b")String b,
//            @RequestParam("c") String c,
//            @RequestParam("d") CommonsMultipartFile file) 
//    {
//
//        try {
//            HttpSession session = request.getSession();
//
//            Class.forName("com.mysql.cj.jdbc.Driver");
//
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");
//            PreparedStatement stmt = con.prepareStatement("INSERT INTO images (name, document_name, Id, document) values (?,?,?,?)");
//            
//            stmt.setString(1, a);
//            stmt.setString(2, b);
//            stmt.setString(3, c);
//            
//            InputStream inputStream = null;
//
//            if (file != null) {
//                inputStream = file.getInputStream();
//            }
//            
//            if (inputStream != null) {
//               stmt.setBlob(4, inputStream);
//            }
//            int row = stmt.executeUpdate();
//            if (row > 0) {
//                return "BLOB/ResFormSubmit";
//            }
//            return "main";
//        }
//        catch (SQLException | ClassNotFoundException | IOException ex) 
//        {
//            throw new RuntimeException(ex);
//        }
//    }
//    
//    @RequestMapping(value = "/deletesucc", method = RequestMethod.POST)
//    public String deletedocume(@RequestParam("a") String a) {
//        try {
//
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");
//            PreparedStatement stmt = con.prepareStatement("delete FROM images WHERE id=?");
//            stmt.setString(1, a);
//
//            stmt.executeUpdate();
//        } catch (Exception K) {
//            System.out.println(K.getMessage());
//        }
//        return "Welcome";
//    }
//}
