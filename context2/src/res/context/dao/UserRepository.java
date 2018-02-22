package context.dao;

import context.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class UserRepository {
    private final String SELECT_BY_ID="select * from userinfo where id=?";
    private final String SELECT_BY_USERNAME="select * from userinfo where username=?";
    private final String INSERT_USER="insert into userinfo(username,password,gender) values(?,?,?)";

    private JdbcTemplate jdbcTemplate;

    @Autowired          //自动装配
    public UserRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public User findUserByID(long id){

        try{
            return jdbcTemplate.queryForObject(SELECT_BY_ID,this::mapRow ,id);
        }catch (EmptyResultDataAccessException e){
            return null;
        }

    }

    public User findUserByUsername(String username){

        User user=null;
        try {
            user = jdbcTemplate.queryForObject(SELECT_BY_USERNAME,this::mapRow, username);
            return user;
        }catch (EmptyResultDataAccessException e){
            return null;
        }
    }

    private User mapRow(ResultSet resultSet, int i) throws SQLException {
        User result = new User();
        result.setId(resultSet.getLong("id"));
        result.setAge(resultSet.getInt("age"));
        result.setGender(resultSet.getString("gender"));
        result.setUsername(resultSet.getString("username"));
        result.setPhoneNumber(resultSet.getString("phonenumber"));
        result.setPassword(resultSet.getString("password"));
        return result;
    }

    public int  insertUser(final String password, final String username, final String gender, String phoneNumber, final int age){

        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(
                new PreparedStatementCreator() {
                    public PreparedStatement createPreparedStatement(Connection con) throws SQLException
                    {
                        PreparedStatement ps = jdbcTemplate.getDataSource()
                                .getConnection().prepareStatement(INSERT_USER,new String[]{ "username","password,gender"});
                        ps.setString(1, username);
                        ps.setString(2,password);
                        ps.setString(3,gender);
                        return ps;
                    }
                }, keyHolder);
        System.out.println("自动插入id============================" + keyHolder.getKey().intValue());
        return keyHolder.getKey().intValue();
    }

//    public int getLastUserID(){
//        jdbcTemplate.execute("select last_insert_id()");
//    }

}
