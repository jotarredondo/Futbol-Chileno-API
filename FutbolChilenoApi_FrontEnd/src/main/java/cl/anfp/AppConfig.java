package cl.anfp;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
@ComponentScan("cl.anfp")
public class AppConfig {
	
	@Bean
	RestTemplate restTemplate() {
		return new RestTemplate();
	}

	
}
