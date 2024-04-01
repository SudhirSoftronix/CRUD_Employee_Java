package com.softronix.dao;

import com.softronix.entity.Employee;

public interface EmployeeDao {
	public String add(Employee emp);
	public Employee search(String eid);
	public String update(Employee emp);
	public String delete(String eid);

}
