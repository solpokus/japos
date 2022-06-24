package id.ajr.japos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
public class JaposApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(JaposApiApplication.class, args);
	}

}
