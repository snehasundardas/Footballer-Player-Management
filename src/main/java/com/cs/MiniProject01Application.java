package com.cs;

import java.util.Locale;

import com.cs.configurer.FootballAppConfigurer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@SpringBootApplication
public class MiniProject01Application {

	public static void main(String[] args) {
		SpringApplication.run(MiniProject01Application.class, args);
	}
	
	@Bean
	public LocaleChangeInterceptor createLCI() {
		LocaleChangeInterceptor lci = new LocaleChangeInterceptor();
		lci.setParamName("lang");
		return lci; 
	}

	@Bean("localeResolver")
	public SessionLocaleResolver createSessionLocaleResolver() {
		SessionLocaleResolver slr = new SessionLocaleResolver();
		slr.setDefaultLocale(Locale.ENGLISH);
		return slr;
	}
}
