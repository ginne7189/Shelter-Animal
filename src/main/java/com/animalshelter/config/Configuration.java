package com.animalshelter.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;

public class Configuration {
	private static SqlSessionFactory factory;

	static {
		try {
			String resource = "com/animalshelter/config/Configuration.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static SqlSession getSqlSession() {
		return factory.openSession();
	}
}
