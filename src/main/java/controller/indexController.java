package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**

 */
@Controller
public class indexController {

    // Controller Login
    @RequestMapping(value = {"/","/login"}, method = RequestMethod.GET)
    public String getLogin(Model model)
    {
        model.addAttribute("Name","RUBEN CERPA");
        return "login";
    }

    // Controller Index POST
    @RequestMapping(value = {"/index"}, method = RequestMethod.POST)
    public String getIndex(Model model,@RequestParam("username") String username,@RequestParam("password") String pass)
    {
        /*
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Spring Training?" +
                            "user=root&password=Sanmina1");

            // Do something with the Connection

        } catch (SQLException ex) {
            // handle any errors
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }*/
        if(username.equals("admin") && pass.equals("admin"))
        {
            model.addAttribute("Name","admin");
            model.addAttribute("Image","https://cdn0.iconfinder.com/data/icons/icostrike-characters/512/admin-512.png");
        }

        return "index";
    }
    // Controller Index GER
    @RequestMapping(value = {"/index"}, method = RequestMethod.GET)
    public String getIndex_2(Model model)
    {
        model.addAttribute("Name","admin");
        model.addAttribute("Image","https://cdn0.iconfinder.com/data/icons/icostrike-characters/512/admin-512.png");

        return "index";
    }


}
