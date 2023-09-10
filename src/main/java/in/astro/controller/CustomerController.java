package in.astro.controller;

import in.astro.model.Customer;
import in.astro.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private ICustomerService service;
    @GetMapping("/list")
    public String showCustomer(Map<String,Object> model){
        List<Customer> customers = service.getCustomer();
        customers.forEach(System.out::println);
        model.put("customers",customers);
        return "list-customer";
    }

    @GetMapping("/form")
    public String showForm(Map<String,Object> model){
        Customer customer = new Customer();
        model.put("customer",customer);
        return "add_customer_form";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){
        service.saveCustomer(customer);
        return "redirect:/customer/list";
    }

    @GetMapping("/update")
    public String updateCustomer(@RequestParam Integer id, Map<String,Object> model){
        Customer customer = service.findById(id);
        model.put("customer",customer);
        return "add_customer_form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam Integer id){
        service.deleteCustomer(id);
        return "redirect:/customer/list";
    }
}
