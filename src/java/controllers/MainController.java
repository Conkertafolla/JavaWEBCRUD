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
    
    
    @RequestMapping(value = "addUser.htm", method = RequestMethod.GET)
    public ModelAndView showaddUser(){
        modelAndView.addObject(new User());
        modelAndView.setViewName("addUser");
        return modelAndView;
    }
    
    
    @RequestMapping(value = "addUser.htm", method = RequestMethod.POST)
    public ModelAndView insertUser(User user){
        String sql = "INSERT INTO user (name, email,user_name,password) VALUES  (?,?,?,?)";
        this.jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getUserName(), user.getPassword());
        modelAndView.addObject("action", "addUser");
        return new ModelAndView("redirect:/index.htm");
    }
    
    
    @RequestMapping(value="editUser.htm", method = RequestMethod.GET)
    public ModelAndView showEditUser(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from user where id = " + id;
        data = this.jdbcTemplate.queryForList(sql);
        modelAndView.addObject("lista", data);
        modelAndView.setViewName("editUser");
        return modelAndView;
    }
    
    
    @RequestMapping(value = "editUser.htm", method = RequestMethod.POST)
    public ModelAndView editUser(User user){
        String sql = "update user set name=?, email=? where id=?";
        this.jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getId());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value = "deleteUser.htm", method = RequestMethod.GET)
    public ModelAndView deleteUser(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from user where id = " + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
    
    
}
