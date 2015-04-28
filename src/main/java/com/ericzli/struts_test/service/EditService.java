package com.ericzli.struts_test.service;

import com.ericzli.struts_test.model.Person;

public interface EditService {

	Person getPerson();

	void savePerson(Person personBean);

}