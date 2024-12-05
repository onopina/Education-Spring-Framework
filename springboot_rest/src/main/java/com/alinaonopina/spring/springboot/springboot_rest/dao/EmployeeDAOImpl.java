package com.alinaonopina.spring.springboot.springboot_rest.dao;

import com.alinaonopina.spring.springboot.springboot_rest.entity.Employee;
import jakarta.persistence.EntityManager;
//import org.hibernate.Session;
//import org.hibernate.query.Query;
import jakarta.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO{

    @Autowired
    private EntityManager entityManager;

    @Override
    public List<Employee> getAllEmployees() {

        Query query = entityManager.createQuery("from Employee");

        List<Employee> allEmployees = query.getResultList();

//        Session session = entityManager.unwrap(Session.class);
//
//        Query query = session.createQuery("from Employee"
//        , Employee.class);
//
//        List<Employee> allEmployees = query.getResultList();
//
        return allEmployees;
    }

    @Override
    public void saveEmployee(Employee employee) {

        entityManager.merge(employee);

//        Session session = entityManager.unwrap(Session.class);
//
//        session.saveOrUpdate(employee);
    }

    @Override
    public Employee getEmployee(int id) {

        Employee employee = entityManager.find(Employee.class, id);

//        Session session = entityManager.unwrap(Session.class);
//
//        Employee employee = session.get(Employee.class, id);

        return employee;
    }

    @Override
    public void deleteEmployee(int id) {

        Query query = entityManager.createQuery("delete from Employee " +
                "where id =: employeeID");

        query.setParameter("employeeID", id);

        query.executeUpdate();

//        Session session = entityManager.unwrap(Session.class);
//
//        Query<Employee> query = session.createQuery("delete from Employee " +
//                "where id =:employeeID");
//
//        query.setParameter("employeeID", id);
//
//        query.executeUpdate();
    }
}
