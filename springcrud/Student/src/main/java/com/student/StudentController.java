package com.student;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.Student;

@Controller
public class StudentController {
	@Autowired
	StudentDao dao;
	
	  @RequestMapping(value = "/")
	    public String index(Model model) {
	        return "index";
	    }
	  
	  @RequestMapping(value="/search")
	  public String contactSearch(Model m,@RequestParam("searchid") int searchid ,Integer sid) {
		  Student st=new Student();
		  m.addAttribute("list",dao.findStudent(st.getSid(),searchid));
		  return "viewstudent";
	  }
	  
	  @RequestMapping("/viewstudent")
		public String viewemp(Model m) {
			List<Student> list=dao.getStudents();
			m.addAttribute("list",list);
			return "viewstudent";
		}
	
	@RequestMapping("/studentform")
	public String showForm(Model m) {
		m.addAttribute("command",new Student());
		return "studentform";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(@ModelAttribute("student") Student student) {
		dao.save(student);
		return "redirect:/viewstudent";	
	}
	
	
	
	@RequestMapping(value="/deletestudent/{sid}",method=RequestMethod.GET)
	public String delete(@PathVariable int sid) {
		dao.delete(sid);
		return "redirect:/viewstudent";
	}
	
	@RequestMapping(value="/editstudent/{sid}")
	public String edit(@PathVariable int sid,Model m) {
		Student student=dao.getStudentById(sid);
		m.addAttribute("command",student);
		return "studenteditform";
	}
 
	@RequestMapping(value="/editsave",method=RequestMethod.POST)
	public String editsave(@ModelAttribute("student") Student student) {
		dao.update(student);
		return "redirect:/viewstudent";
	}
}
