package com.study.controller;

import com.study.dao.Student;
import com.study.dao.User;
import com.study.service.StudentService;
import com.study.service.UserService;
import javafx.geometry.Pos;
import org.codehaus.jackson.node.BooleanNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class Haddle {

    @Autowired
    UserService userService;
    @Autowired
    StudentService studentService;
    ModelAndView mv=null;

    @RequestMapping(value = "login",method = POST)
    public ModelAndView login(@RequestParam(value = "uname",required = false) String uname,
                              @RequestParam(value = "password",required = false) String pwd) {

        User user = userService.selectOne(new User(uname, pwd));
        System.out.println(user);
        if (user != null) {
            mv = new ModelAndView("welcome");
            mv.addObject("user", user);
            List<Student> students = studentService.queryAllStudent();
            mv.addObject("studentList", students);
        } else {
            mv = new ModelAndView("login");
            mv.addObject("falseLogin","登陆失败");
        }
        return mv;
    }

    @RequestMapping(value = "addStudent",method = POST)
    @ResponseBody
    public String  addStudent(@RequestParam("stuName")String stuName,
                              @RequestParam("sex") int sex,
                              @RequestParam("score") int score) {
        boolean state = studentService.insertStudent(new Student(stuName, sex, score));
        if (state) {
        return "增加成功";
        } else {
            return "增加失败";
        }
    }

    @RequestMapping(value = "alterStudent",method = POST)
    @ResponseBody
    public String alterStudent(Student student){
        boolean state = studentService.alterStudent(student);
        if (state) {
            return "更新成功";
        } else {
            return "更新失败";
        }
    }

    @RequestMapping(value = "deleteStudent",method = POST)
    @ResponseBody
    public String deleteStudent(Student student){
        boolean state = studentService.deleteStudent(student);
        if (state) {
            return "删除成功";
        } else {
            return "删除失败";
        }
    }

    @RequestMapping("outLogin")
    public ModelAndView outLogin(HttpSession session){
        session.invalidate();
        mv = new ModelAndView("login");
        mv.addObject("falseLogin","退出成功");
        return mv;
    }
}
