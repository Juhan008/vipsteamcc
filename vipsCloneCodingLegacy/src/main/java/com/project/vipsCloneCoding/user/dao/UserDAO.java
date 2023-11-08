package com.project.vipsCloneCoding.user.dao;

import java.security.MessageDigest;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
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
      return new UserVO(rs.getInt("id"), rs.getString("name"), rs.getString("phone_number"),
          rs.getString("user_id"), rs.getString("pw"), rs.getString("address"),
          rs.getString("birth"), rs.getDate("created_at"), rs.getString("coupon"),
          rs.getString("member"), rs.getString("location"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table users");
  }

  public void createTable() throws Exception {
    jdbcTemplate.update("create table users(id number(10,0) generated as identity primary key, "
        + "name varChar2(30) not null, " + "phone_number varchar2(50) not null, "
        + "user_id varchar2(20) not null unique, " + "pw varchar2(500) not null, "
        + "address varchar2(300) not null, " + "birth varchar2(300) not null, "
        + "created_at Date default sysdate, " + "coupon varchar2(1000), " + "member varchar2(30), "
        + "location varchar2(100))");
  }

  public void add(UserVO user) {
    jdbcTemplate.update(
        "insert into users (name, phone_number, user_id, pw, address, birth) values (?,?,?,?,?,?)",
        user.getName(), user.getPhoneNumber(), user.getUserId(),
        cryptoPassword(user.getPw(), "SHA-256"), user.getAddress(), user.getBirth());
  }

  public void updateMember(int id, String member) {
    jdbcTemplate.update("update users set member = '" + member + "' where id = " + id);
  }

  public void updateLocation(int id, String location) {
    jdbcTemplate.update("update users set location = '" + location + "' where id = " + id);
  }

  public void delete(int id) throws Exception {
    jdbcTemplate.update("delete from users where id = " + id);
  }

  public UserVO get(int id) throws Exception {
    return jdbcTemplate.queryForObject("select * from users where id = ?", new Object[] {id},
        mapper);
  }

  public UserVO get(String user_id) throws Exception {
    return jdbcTemplate.queryForObject("select * from users where user_id = ?",
        new Object[] {user_id}, mapper);
  }

  public List<UserVO> getMember(String member) throws Exception {
    return jdbcTemplate.query("select * from users where member = ?", new Object[] {member},
        mapper);
  }

  private String cryptoPassword(String password, String method) {
    try {
      MessageDigest md = MessageDigest.getInstance(method);
      md.update(password.getBytes());
      byte[] sha256Hash = md.digest();
      StringBuilder sb = new StringBuilder();

      for (byte b : sha256Hash) {
        sb.append(String.format("%02x", b));
      }

      return sb.toString();

    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

}
