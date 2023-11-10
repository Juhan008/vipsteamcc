package com.project.vipsCloneCoding.reservation.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
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
          rs.getString("user_id"), rs.getTimestamp("time"), rs.getInt("how_many_people"),
          rs.getString("reservation_contents"), rs.getString("manager_contents"),
          rs.getString("location"), rs.getDate("created_at"), rs.getString("isCheck"),
          rs.getString("isDelete"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table reservation");
  }

  public void createTable() throws Exception {
    jdbcTemplate
        .update("create table reservation(id number(10,0) generated as identity primary key, "
            + "name varchar2(30) not null, " + "phone_number varchar2(50) not null, "
            + "user_id varchar2(20) not null, " + "time Date not null, "
            + "how_many_people number(4,0), " + "reservation_contents varchar2(3000) not null, "
            + "manager_contents varchar2(3000), " + "location varchar2(30) not null, "
            + "created_at Date default sysdate, " + "isCheck varchar(15), "
            + "isDelete varchar2(15) default 'false')");
  }

  public void add(ReservationVO reservation) {
    jdbcTemplate.update(
        "insert into reservation (name, phone_number, user_id, time,how_many_people, reservation_contents, location) values (?,?,?,?,?,?,?)",
        reservation.getName(), reservation.getPhoneNumber(), reservation.getUserId(),
        reservation.getTime(), reservation.getHowManyPeople(), reservation.getReservationContents(),
        reservation.getLocation());
  }

  public void updateAnswer(int id, String member) {
    jdbcTemplate.update("update reservation set manager_contents = ?, isCheck = 1 where id = ?",
        member, id);
  }

  public List<ReservationVO> getAllReservation(String user_id) throws Exception {
    return jdbcTemplate.query("select * from reservation where user_id = ?", new Object[] {user_id},
        mapper);
  }

  public List<ReservationVO> getLocationReservation(String location) throws Exception {
    return jdbcTemplate.query("select * from reservation where location = ?",
        new Object[] {location}, mapper);
  }

  public List<ReservationVO> getLocationReservationLastTen(String location, int controll)
      throws Exception {
    return jdbcTemplate.query(
        "select * from (select rownum startRow, tempboard.*from(select * from reservation where location = ? order by id desc)tempboard) where ROWNUM <= 10 and startRow >= ?",
        new Object[] {location, (controll - 1) * 10 + 1}, mapper);
  }

  public ReservationVO get(int id) throws Exception {
    return jdbcTemplate.queryForObject("select * from reservation where id = ?", new Object[] {id},
        mapper);
  }

  public List<ReservationVO> getAllTable() throws Exception {
    return jdbcTemplate.query("select * from reservation", mapper);
  }

  public List<ReservationVO> getAllTable(String location) throws Exception {
    return jdbcTemplate.query("select * from reservation where location = ?",
        new Object[] {location}, mapper);
  }

  public List<ReservationVO> getLastTen(int controll) throws Exception {
    return jdbcTemplate.query(
        "select * from (select rownum startRow, tempboard.*from(select * from reservation order by id desc)tempboard) where ROWNUM <= 10 and startRow >= "
            + ((controll - 1) * 10 + 1),
        mapper);
  }

}
