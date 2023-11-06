package com.project.vipsCloneCoding.notUser.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.notUser.domain.NotUserVO;

@Repository
public class NotUserDAO {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public RowMapper<NotUserVO> mapper = new RowMapper<NotUserVO>() {
    @Override
    public NotUserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new NotUserVO(rs.getInt("id"), rs.getString("name"), rs.getString("phone_number"),
          rs.getString("address"), rs.getDate("created_at"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table not_user");
  }

  public void createTable() throws Exception {
    jdbcTemplate.update("create table not_user(id number(10,0) generated as identity primary key, "
        + "name varChar2(20) not null, " + "phone_number varchar2(50) not null"
        + "address varchar2(300) not null, " + "created_at Date default sysdate");
  }

}
