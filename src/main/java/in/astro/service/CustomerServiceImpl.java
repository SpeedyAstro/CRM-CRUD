package in.astro.service;

import in.astro.dao.ICustomerDAO;
import in.astro.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerServiceImpl implements ICustomerService{
    @Autowired
    private ICustomerDAO repo;
    @Override
    public List<Customer> getCustomer() {
        return (List<Customer>) repo.findAll();
    }

    @Override
    public void saveCustomer(Customer customer) {
        repo.save(customer);
    }

    @Override
    public Customer findById(Integer id) {
        Optional<Customer> optional = repo.findById(id);
        return optional.get();
    }

    @Override
    public void deleteCustomer(Integer id) {
        repo.deleteById(id);
    }
}
