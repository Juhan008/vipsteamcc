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
    jdbcTemplate.update("create table Allergy(division varchar2(30),"
        + "menu varchar2(30) not null, info varchar2(50) not null,"
        + "material varchar2(10) not null)");
  }

  public void add(Allergy allergy) {
    jdbcTemplate.update(
        "insert into Allergy (\"division\", \"menu\", \"info\", \"material\") values (?, ?, ?, ?)",
        allergy.getDivision(), allergy.getMenu(), allergy.getInfo(), allergy.getMaterial());
  }


}
