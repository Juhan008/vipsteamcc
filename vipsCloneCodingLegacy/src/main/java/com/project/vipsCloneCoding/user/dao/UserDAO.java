package com.project.vipsCloneCoding.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.user.domain.UserVO;

@Repository
public class UserDAO {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public RowMapper<UserVO> mapper = new RowMapper<UserVO>() {
    @Override
    public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new UserVO(rs.getInt("id"), rs.getString("name"), rs.getString("phoneNumber"),
          rs.getString("user_id"), rs.getString("pw"), rs.getString("address"),
          rs.getString("birth"), rs.getDate("created_at"), rs.getString("coupon"),
          rs.getString("member"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table user");
  }

  public void createTable() throws Exception {
    jdbcTemplate.update("create table user(id number(10,0) generated as identity primary key, "
        + "name varChar2(20) not null, " + "user_id varchar2(20) not null, "
        + "pw varchar2(50) not null, " + "address varchar2(300) not null, "
        + "birth varchar2(300) not null" + "created_at Date default sysdate, "
        + "coupon varchar2(1000), member varchar2(30))");
  }

  public UserVO getTable(int id) throws Exception {
    return jdbcTemplate.queryForObject("select * from user where id = ?", new Object[] {id},
        mapper);
  }

}
