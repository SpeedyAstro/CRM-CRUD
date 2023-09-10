package in.astro.dao;

import in.astro.model.Customer;
import org.springframework.data.repository.CrudRepository;

public interface ICustomerDAO extends CrudRepository<Customer,Integer> {

}
