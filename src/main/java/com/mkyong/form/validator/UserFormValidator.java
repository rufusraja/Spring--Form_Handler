package com.mkyong.form.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.mkyong.form.model.User;
import com.mkyong.form.service.UserService;

//http://docs.spring.io/spring/docs/current/spring-framework-reference/html/validation.html#validation-mvc-configuring
@Component
public class UserFormValidator implements Validator {

	//@Autowired
	//@Qualifier("emailValidator")
	//EmailValidator emailValidator;
	
	@Autowired
	UserService userService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		User user = (User) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "activity", "NotEmpty.userForm.activity");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "start_planned", "NotEmpty.userForm.start_planned");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "start_actual", "NotEmpty.userForm.start_actual");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "finish_planned", "NotEmpty.userForm.finish_planned");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "finish_actual","NotEmpty.userForm.finish_actual");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "status", "NotEmpty.userForm.status");

		
		if(user.getActivity()==null){
			errors.rejectValue("activity", "NotEmpty.userForm.activity");
		}

	}

}