package com.alinaonopina.spring.rest;

import com.alinaonopina.spring.rest.configuration.MyConfig;
import com.alinaonopina.spring.rest.entity.Employee;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.List;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) {
        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(MyConfig.class);

        Communication communication = context.getBean("communication", Communication.class);

//        List<Employee> allEmployees = communication.getAllEmployees();
//
//        System.out.println(allEmployees);

//        Employee empByID = communication.getEmployee(1);
//
//        System.out.println(empByID);

//        Employee employee = new Employee("Sveta", "Sokolova"
//                , "IT", 1200);
//
//        employee.setId(10);
//
//        communication.saveEmployee(employee);

        communication.deleteEmployee(10);


    }
}
