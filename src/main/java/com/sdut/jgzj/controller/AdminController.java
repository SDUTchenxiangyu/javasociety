package com.sdut.jgzj.controller;

import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdut.jgzj.bean.BasicMatch;
import com.sdut.jgzj.bean.Matchstate;
import com.sdut.jgzj.bean.Msg;
import com.sdut.jgzj.bean.SdutentMatch;
import com.sdut.jgzj.bean.Students;
import com.sdut.jgzj.bean.TypeMatch;
import com.sdut.jgzj.service.BasicMatchService;
import com.sdut.jgzj.service.MatchstateService;
import com.sdut.jgzj.service.SdutentMatchService;
import com.sdut.jgzj.service.StudentsService;
import com.sdut.jgzj.service.TypeMatchService;

@Controller
public class AdminController {
	@Autowired
	private StudentsService studentsService;
	@Autowired
	private TypeMatchService typeMatchService;
	@Autowired
	private BasicMatchService basicMatchService;
	@Autowired
	private MatchstateService matchstateService;
	@Autowired
	private SdutentMatchService sdutentMatchService;

	@RequestMapping("/admin")
	public String admin(HttpServletRequest request) {
		Students student = (Students) request.getSession().getAttribute("student");

		if (student.getPower() != null) {
			if (student.getPower().equals("1")) {
				return "admin";
			} else {
				return "redirect:/index.jsp";
			}
		} else {
			return "redirect:/index.jsp";
		}

	}

	@RequestMapping("session")
	@ResponseBody
	public Msg checkSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("student") != null && session.getAttribute("student") != "") {
			Students student = (Students) session.getAttribute("student");
			return Msg.sessess().add("student", student);
		} else {
			return Msg.fail();
		}
	}

	@RequestMapping("/signin")
	@ResponseBody
	public Msg signin(@RequestParam(value = "studentId") String studentId,
			@RequestParam(value = "password") String password, ModelMap map, HttpServletRequest request) {
		Students student = studentsService.findbyStudentId(studentId);
		if (student != null) {
			if (student.getStudentId().equals(studentId) && student.getPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("student", student);
				return Msg.sessess().add("student", student);
			} else {
				return Msg.fail();
			}
		} else {
			return Msg.fail();
		}
	}

	@RequestMapping("/loginout")
	@ResponseBody
	public Msg loginout(HttpServletRequest request) {
		request.getSession().removeAttribute("student");
		return Msg.sessess();
	}

	@RequestMapping("/signup")
	@ResponseBody
	public Msg signup(@RequestParam(value = "name") String name, @RequestParam(value = "password") String password,
			@RequestParam("studentclass") String studentClass, @RequestParam("studentId") String studentId,
			@RequestParam("phone") String phone, ModelMap map, HttpServletRequest request) {
		studentsService.saveStudent(name, studentId, phone, password, studentClass);
		Students student = studentsService.findbyStudentId(studentId);
		if (student != null) {
			if (student.getStudentId().equals(studentId) && student.getPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("student", student);
				return Msg.sessess().add("student", student);
			} else {
				return Msg.fail();
			}
		} else {
			return Msg.fail();
		}
	}

	@RequestMapping("/test")
	public String test(HttpServletRequest request) {

		return "test";
	}

	@RequestMapping("/checkstudent")
	@ResponseBody
	public Msg checkStudent(@RequestParam("studentId") String studentId) {
		Students student = studentsService.findbyStudentId(studentId);
		if (student == null) {
			return Msg.sessess();
		} else {
			return Msg.fail();
		}
	}

	@RequestMapping("/tpye")
	@ResponseBody
	public Msg tpye(@RequestParam("activity-name") String name, @RequestParam("activity-level") Integer id) {
		TypeMatch typematch = typeMatchService.findtypebyId(id);
		String typename = typematch.getName();
		basicMatchService.savebasicmatch(name, typename);
		return Msg.sessess();
	}

	@RequestMapping("/findbymatchname")
	@ResponseBody
	public Msg findbymatchname() {
		List<BasicMatch> basic = basicMatchService.findall();
		return Msg.sessess().add("basic", basic);
	}

	@RequestMapping("/openmatch")
	@ResponseBody
	public Msg openmatch(@RequestParam("activity-open-type") Integer id,
			@RequestParam("activity-open-class") Integer matchClass,
			@RequestParam("activity-open-timestart") Date opentime, @RequestParam("activity-open-timeend") Date endtime,
			@RequestParam("activity-open-place") String place,
			@RequestParam("activity-open-timeorperson") Integer timeofperson,
			@RequestParam("activity-open-timenumber") Integer timenumber,
			@RequestParam("activity-open-openorclose") Integer openornot) {
		String matchnameofbasic = basicMatchService.findBasicMatchbyid(id).getName();
		String matchnameofservice = "第" + matchClass + "届" + matchnameofbasic;
		String servicetimeorperson = new String();
		if(timeofperson == 1) {
			servicetimeorperson = "个人";
		}else {
			servicetimeorperson = "团体";
		}
		boolean serviceopenornot = false ;
		if(openornot == 1) {
			serviceopenornot = true;
		}else {
			serviceopenornot = false;
		}
		String typename = basicMatchService.findBasicMatchbyid(id).getTypematch();
		Integer typeid = null;
		if(typename.equals("品牌活动")) {
			typeid = 1;
		}else {
			typeid = 2;
		}
		matchstateService.saveMatch(matchnameofservice, opentime, endtime, place, matchClass, servicetimeorperson, timenumber, serviceopenornot,typeid);
		return Msg.sessess();
	}
	
	@RequestMapping("/writematch")
	@ResponseBody
	public Msg writematch() {
		List<Matchstate> match = matchstateService.findallbyMatchstate();
		return Msg.sessess().add("match", match);
	}
	
	
	@RequestMapping("/personmatch")
	@ResponseBody
	public Msg personmatch(@RequestParam("match-tame-per-studentId")String studentid,@RequestParam("matchid")Integer matchid) {
		Integer tame = 0;
		sdutentMatchService.saveperson(matchid, studentid, tame);
		return Msg.sessess();
	}
	
	@RequestMapping("/savetame")
	@ResponseBody
	public Msg tamematch(@RequestParam("match-tame-cap-studentId")String cap,@RequestParam("match-tame-hum1-studentId")String hum1,@RequestParam("match-tame-hum2-studentId")String hum2,@RequestParam("matchid")Integer matchid) {
		String[] student = {cap,hum1,hum2};
		String matchidtemp = matchid.toString();
		Integer tame = sdutentMatchService.findmaxtame(matchidtemp);
		if(tame == null) {
			tame = 0;
		}
		sdutentMatchService.savetame(matchid, student, ++tame);
		return Msg.sessess();
	}
	@RequestMapping("/checksdutentmatch")
	@ResponseBody
	public Msg checksdutentmatch(@RequestParam("matchid")Integer matchid,@RequestParam("studentId")String sdutentid) {
		SdutentMatch sdutent = sdutentMatchService.findsdutentMatchbymatchid(sdutentid, matchid);
		if(sdutent == null) {
			return Msg.sessess();
		}else {
			return Msg.fail();
		}
	}
}
