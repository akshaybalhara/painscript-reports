package com.painscript.configuration;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component("customUserDetailService")
public class CustomUserDetailService implements UserDetailsService{

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		//String username = "Admin";
		String password = new SimpleDateFormat("ddMMyyyy").format(new Date());
		
		return new User("Admin", password, AuthorityUtils.createAuthorityList("ROLE_USER"));
	}

}
