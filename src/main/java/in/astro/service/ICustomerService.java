package in.astro.service;

import in.astro.model.Customer;

import java.util.List;

public interface ICustomerService {
    public List<Customer> getCustomer();
    public void saveCustomer(Customer customer);
    public Customer findById(Integer id);
    public void deleteCustomer(Integer id);
}
