package com.project.vipsCloneCoding.allergyDelivery.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.allergyDelivery.domain.AllergyDelivery;

@Repository
public class AllergyDeliveryDao {
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public RowMapper<AllergyDelivery> mapper = new RowMapper<AllergyDelivery>() {
    @Override
    public AllergyDelivery mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new AllergyDelivery(rs.getString("division"), rs.getString("menu"),
          rs.getString("info"), rs.getString("material"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table AllergyDelivery");
  }

  public void createAllergyDeliveryTable() throws Exception {
    jdbcTemplate
        .update("create table AllergyDelivery(id number(10,0) generated as identity primary key, "
            + "division varchar2(100), " + "menu varchar2(100) not null, "
            + "info varchar2(300) not null, " + "material varchar2(30) not null)");
  }

  public void addAllergyDelivery(AllergyDelivery allergyDelivery) throws Exception {
    jdbcTemplate.update(
        "insert into AllergyDelivery (division, menu, info, material) values (?, ?, ?, ?)",
        allergyDelivery.getDivision(), allergyDelivery.getMenu(), allergyDelivery.getInfo(),
        allergyDelivery.getMaterial());
  }

  public AllergyDelivery getId1(String division) {
    try {
      System.out.println("1번오류");
      return jdbcTemplate.queryForObject("select * from AllergyDelivery where ID = ?",
          new Object[] {division}, mapper);
    } catch (Exception e) {
      e.printStackTrace();
    }
    System.out.println("2번오류");
    return null;
  }

  public List<AllergyDelivery> getAllMenu01(String division, String material) throws Exception {
    return jdbcTemplate.query("select * from AllergyDelivery where division = ? and material = ?",
        new Object[] {division, material}, mapper);
  }

}
