package com.project.vipsCloneCoding.reservation.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.reservation.domain.ReservationVO;

@Repository
public class ReservationDAO {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public RowMapper<ReservationVO> mapper = new RowMapper<ReservationVO>() {
    @Override
    public ReservationVO mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new ReservationVO(rs.getInt("id"), rs.getString("name"), rs.getString("phone_number"),
          rs.getString("title"), rs.getString("reservation_contents"),
          rs.getString("manager_contents"), rs.getString("address"), rs.getDate("created_at"),
          rs.getString("isCheck"), rs.getString("isDelete"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table reservation");
  }

  public void createTable() throws Exception {
    jdbcTemplate
        .update("create table reservation(id number(10,0) generated as identity primary key, "
            + "name varchar2(20) not null, " + "phone_number varchar2(50) not null, "
            + "title varchar2(200) not null, " + "reservation_contents varchar2(3000) not null, "
            + "manager_contents varchar2(3000)" + "address varchar2(300) not null, "
            + "created_at Date default sysdate, " + "isCheck varchar(15), "
            + "isDelete varchar2(15) default 'false')");
  }

}
