package context.config;

import context.ComponetScanEmptyInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackageClasses = ComponetScanEmptyInterface.class
,excludeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION,value = EnableWebMvc.class)})
@PropertySource("classpath:/context/dao.properties")
public class RootConfig {

    @Autowired
    private Environment environment;
    @Bean
    public DataSource getDataSource(){
        System.out.println(environment.getProperty("driver"));
        System.out.println(environment.getProperty("url"));
        System.out.println(environment.getProperty("user"));
        System.out.println(environment.getProperty("password"));
        DriverManagerDataSource ds=new DriverManagerDataSource();
        ds.setDriverClassName(environment.getProperty("driver"));
        ds.setUrl(environment.getProperty("url"));
        ds.setUsername(environment.getProperty("user"));
        ds.setPassword(environment.getProperty("password"));
        return ds;
    }

    @Bean
    @Autowired
    public JdbcTemplate getJdbcTemplate(DataSource source){
        return new JdbcTemplate(source);
    }
}
