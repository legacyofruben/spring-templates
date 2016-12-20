package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

/**
 * Created by gdl3amnb345458 on 6/04/16.
 */
@Controller
@EnableWebMvc
@ComponentScan("controller")
public class webConfig extends WebMvcConfigurerAdapter{

    @Bean
    UrlBasedViewResolver resolver()
    {
        UrlBasedViewResolver resolver = new UrlBasedViewResolver();

        resolver.setPrefix("/view/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);

        return resolver;
    }
}
