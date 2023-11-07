package com.project.vipsCloneCoding.allergy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.allergy.domain.Allergy;

@Repository
public class AllergyDao {
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public RowMapper<Allergy> mapper = new RowMapper<Allergy>() {
    @Override
    public Allergy mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new Allergy(rs.getString("division"), rs.getString("menu"), rs.getString("info"),
          rs.getString("material"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table Allergy");
  }

  public void createAllergyTable() throws Exception {
    jdbcTemplate.update("create table Allergy(id number(10,0) generated as identity primary key, "
        + "division varchar2(100), " + "menu varchar2(100) not null, "
        + "info varchar2(300) not null, " + "material varchar2(30) not null)");
  }

  public void addAllergy(Allergy allergy) throws Exception {
    jdbcTemplate.update("insert into Allergy (division, menu, info, material) values (?, ?, ?, ?)",
        allergy.getDivision(), allergy.getMenu(), allergy.getInfo(), allergy.getMaterial());
  }

  public Allergy getAllergy(String division) throws Exception {
    return jdbcTemplate.queryForObject("select * from Allergy where division = ? ",
        new Object[] {division}, mapper);
  }

  public Allergy getMaterial(String a, String b) throws Exception {
    return jdbcTemplate.queryForObject("select * from Allergy where material = ? and division = ?",
        new Object[] {a, b}, mapper);
  }

  public Allergy getDivision(String division) {
    try {
      System.out.println("1번오류");
      return jdbcTemplate.queryForObject("select * from Allergy where ID = ?",
          new Object[] {division}, mapper);
    } catch (Exception e) {
      e.printStackTrace();
    }
    System.out.println("2번오류");
    return null;
  }


}
