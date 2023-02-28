package by.shelopaev.controllers;

import by.shelopaev.DAO.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showView() {
        return "myView";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-employee-view";
    }

//   @PostMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//       String empName = request.getParameter("employeeName");
//       empName = "Mr. " + empName;
//       model.addAttribute("nameAttribute", empName);
//       model.addAttribute("description", "developer");
//        return "show-employee-view";
//    }

//    @PostMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName") String empName, Model model){
//       empName = "Mr. " + empName;
//       model.addAttribute("nameAttribute", empName);
//       model.addAttribute("description", "developer");
//        return "show-employee-view";
//    }

    @PostMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") Employee emp) {
        return "show-employee-view";
    }
}
