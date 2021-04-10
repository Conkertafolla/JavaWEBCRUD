/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import config.Connection;
import Entities.User;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Gerardo Tafolla
 */
@Controller
public class MainController {
    Connection connection = new Connection();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(connection.Connect());
    ModelAndView modelAndView =  new ModelAndView();
    List data;
    int id;
 
 
    @RequestMapping("index.htm")
    public ModelAndView listar(){
        String sql = "select * from user";
        data = this.jdbcTemplate.queryForList(sql);
        modelAndView.addObject("lista", data);
        modelAndView.setViewName("index");
        return modelAndView;
    }
    
}
