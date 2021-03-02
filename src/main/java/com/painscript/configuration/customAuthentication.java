package com.painscript.configuration;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

@Component("customAuthentication")
public class customAuthentication implements AuthenticationProvider {

	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		int sum = 0;
		UsernamePasswordAuthenticationToken authenticationToken = null;
		String username = authentication.getName();
		String credential = authentication.getCredentials().toString();
		int pass = Integer.parseInt(credential);
		int len = credential.length();
		for(int i=0;i<len;i++) {
			sum = sum + (pass%10);
			pass = pass/10;
		}
		
		if(username.equals("Admin") && sum == 9) {
			Collection<GrantedAuthority> grantedAutjority = getGrantedAuthorities();
			authenticationToken = new UsernamePasswordAuthenticationToken(new User("Admin", credential, AuthorityUtils.createAuthorityList("ROLE_USER")),
					username,grantedAutjority);
		}
		
		return authenticationToken;
	}
	
	private Collection<GrantedAuthority> getGrantedAuthorities(){
		Collection<GrantedAuthority> grantedAuthority = new ArrayList<GrantedAuthority>();
		grantedAuthority.add(new SimpleGrantedAuthority("ROLE_USER"));
		return grantedAuthority;
	}

	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
