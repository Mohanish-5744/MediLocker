/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package minor;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author HP
 */
@Controller

public class rstart {

    String patientname = "";
    String adhar = "";
    String email = "";
    String password = "";
//    String clubemail = "";

    @RequestMapping("/home")
    public String index() {
//        System.out.println("Hello");
        return "index";
    }

    @RequestMapping(value = "/start", method = RequestMethod.GET)
    public String start() {
        return "final_start";
    }

    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/sign", method = RequestMethod.GET)
    public String register() {
        return "Registration";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home() {
        return "final_start";
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String successful_message() {
        return "successful_message";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about_us() {
        return "aboutus";
    }

    @RequestMapping(value = "/wlcm", method = RequestMethod.POST)
    public String welcom(@RequestParam("adhar") String a,
            @RequestParam("email") String b,
            @RequestParam("pass") String c,
            Model object) {
        object.addAttribute("UserName", patientname);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");

            PreparedStatement stmt = con.prepareStatement("select * from patient where adhar=? and email=? or adhar=? and pass=?");
            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, a);
            stmt.setString(4, c);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "", s = "", name = "";
            while (rs.next()) {
                m = rs.getString("adhar");
                l = rs.getString("email");
                s = rs.getString("pass");
                name = rs.getString("fname");
            }
            if (m.equals(a) && l.equals(b) && s.equals(c)) {
                object.addAttribute("UserName", name);
                object.addAttribute("Useradhar", m);
                object.addAttribute("Useremail", l);

                patientname = name;
                adhar = m;
                email = l;
                password=s;

                return "Welcome";
            } else {
                return "error";
            }
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "error";
    }

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String Handleform(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
            @RequestParam("h") String h,
            @RequestParam("i") String i,
            @RequestParam("j") String j,
            @RequestParam("k") String k,
            @RequestParam("l") String l,
            @RequestParam("m") String m,
            @RequestParam("n") String n,
            @RequestParam("p") String p,
            org.springframework.ui.Model object1) {
        System.out.println("I am from Processform");

        object1.addAttribute("msg", "record inserted Successfully ");
        try {

            Class.forName("com.mysql.jdbc.Driver");

//step2 create  the connection object  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO patient VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, f);
            stmt.setString(6, g);
            stmt.setString(7, h);
            stmt.setString(8, i);
            stmt.setString(9, j);
            stmt.setString(10, k);
            stmt.setString(11, l);
            stmt.setString(12, m);
            stmt.setString(13, n);
            stmt.setString(14, p);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "successful_message";
    }
    
    @RequestMapping(value = "/doctorregister", method = RequestMethod.GET)
    public String succ() {
        return "doctor_registration";
    }
    
    @RequestMapping(value = "/doctor", method = RequestMethod.POST)
    public String doctorregister(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
           
            org.springframework.ui.Model object1) {
        System.out.println("I am from Processform");

        object1.addAttribute("msg", "record inserted Successfully ");
        try {

            Class.forName("com.mysql.jdbc.Driver");

//step2 create  the connection object  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO doctor VALUES(?,?,?,?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, e);
            stmt.setString(6, f);
            stmt.setString(7, g);
           

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "successful_doctor";
    }
    
    @RequestMapping(value = "/logindoctor", method = RequestMethod.GET)
    public String logindoctor() {
        return "login_doctor";
    }
    
     @RequestMapping(value = "/wlcmdoctor", method = RequestMethod.POST)
    public String welcomdoctor(
            @RequestParam("email") String a,
            @RequestParam("pass") String b,
            Model object) {
       
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");

            PreparedStatement stmt = con.prepareStatement("select * from doctor where email=? and pass=?");
            stmt.setString(1, a);
            stmt.setString(2, b);
            
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "", s = "", dname = "";
            while (rs.next()) {
               
                m = rs.getString("email");
                l = rs.getString("pass");
                dname = rs.getString("fname");
            }
            if (m.equals(a) && l.equals(b) ) {
                object.addAttribute("DoctorName", dname);
                object.addAttribute("Useremail", m);
                object.addAttribute("User", l);


                return "Welcome_Doctor";
            } else {
                return "error";
            }
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "error";
    }
    
    @RequestMapping(value = "/displaypatient", method = RequestMethod.GET)
    public String displaypatient(Model m2) {
        m2.addAttribute("UserName", patientname);
        m2.addAttribute("Useradhar", adhar);
        m2.addAttribute("Useremail", email);
        return "BLOB/view_pdocu";
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    @RequestMapping(value = "/upload_documents", method = RequestMethod.GET)
    public String Loadinsgpage(Model m2) {
        m2.addAttribute("UserName", patientname);
        m2.addAttribute("Useradhar", adhar);
        m2.addAttribute("Useremail", email);
        m2.addAttribute("Userpass", password);
        return "BLOB/upload_document";
    }

    @RequestMapping(value = "/displayblob", method = RequestMethod.GET)
    public String Loadinsgspage(Model m2) {
        m2.addAttribute("UserName", patientname);
        m2.addAttribute("Useradhar", adhar);
        m2.addAttribute("Useremail", email);
        m2.addAttribute("Userpass", password);
        return "BLOB/view_docu";
    }

    @RequestMapping(value = "/upload_successful", method = RequestMethod.POST)
    public String submitresForm(HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") CommonsMultipartFile file,
            Model m) {
        m.addAttribute("UserName", patientname);
        m.addAttribute("Useradhar", adhar);
        m.addAttribute("Useremail", email);
        m.addAttribute("Userpass", password);

        try {
            HttpSession session = request.getSession();

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO images (name, document_name, Id, document) values (?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, c);

            InputStream inputStream = null;

            if (file != null) {
                inputStream = file.getInputStream();
            }

            if (inputStream != null) {
                stmt.setBlob(4, inputStream);
            }
            int row = stmt.executeUpdate();
            if (row > 0) {
                return "BLOB/ResFormSubmit";
            }
            return "main";
        } catch (SQLException | ClassNotFoundException | IOException ex) {
            throw new RuntimeException(ex);
        }
    }

    @RequestMapping(value = "/deletesucc", method = RequestMethod.POST)
    public String deletedocume(@RequestParam("a") String a) {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");
            PreparedStatement stmt = con.prepareStatement("delete FROM images WHERE id=?");
            stmt.setString(1, a);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "Welcome";
    }

}
