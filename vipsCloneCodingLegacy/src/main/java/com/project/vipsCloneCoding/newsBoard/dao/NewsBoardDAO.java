package com.project.vipsCloneCoding.newsBoard.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.newsBoard.domain.NewsBoardVO;

@Repository
public class NewsBoardDAO {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public RowMapper<NewsBoardVO> mapper = new RowMapper<NewsBoardVO>() {
    @Override
    public NewsBoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new NewsBoardVO(rs.getInt("id"), rs.getString("user_id"), rs.getString("title"),
          rs.getString("board_contents"), rs.getDate("created_at"), rs.getInt("board_view"));
    }
  };

  public RowMapper<NewsBoardVO> count = new RowMapper<NewsBoardVO>() {
    @Override
    public NewsBoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
      return new NewsBoardVO(rs.getInt("count(1)"));
    }
  };

  public void dropTable() throws Exception {
    jdbcTemplate.update("drop table newsboard");
  }

  public void createNewsBoardTable() throws Exception {
    jdbcTemplate.update("create table newsboard(id number(10,0) generated as identity primary key, "
        + "user_id varchar2(20) not null, " + "title varchar2(200) not null, "
        + "board_contents varchar2(3000) not null, " + "created_at Date default sysdate, "
        + "board_view number(10,0) default 0)");
  }

  public NewsBoardVO getNewsBoardTable(int id) throws Exception {
    return jdbcTemplate.queryForObject("select * from newsboard where id = ?", new Object[] {id},
        mapper);
  }

  public void updateView(int id, int view) throws Exception {
    jdbcTemplate.update("update newsboard set board_view = " + view + " where id = " + id);
  }

  public NewsBoardVO getNewsBoardFinalTable() throws Exception {
    return jdbcTemplate.queryForObject(
        "select * from (select * from newsboard order by id desc) where rownum = 1", mapper);
  }

  public NewsBoardVO countTable() {

    return jdbcTemplate.queryForObject("select count(1) from newsboard", count);

  }


  public void add(NewsBoardVO newsBoard) {
    jdbcTemplate.update("insert into newsboard (user_id, title, board_contents) values (?,?,?)",
        newsBoard.getUserId(), newsBoard.getTitle(), newsBoard.getContents());
  }

  public List<NewsBoardVO> getLastTen() throws Exception {
    return jdbcTemplate.query(
        "select * from (select * from newsboard order by id desc) where ROWNUM <= 10", mapper);
  }

  public List<NewsBoardVO> getLastTen(int controll) throws Exception {
    return jdbcTemplate.query(
        "select * from (select rownum startRow, tempboard.*from(select * from newsboard order by id desc)tempboard) where ROWNUM <= 10 and startRow >= "
            + ((controll - 1) * 10 + 1),
        mapper);
  }


}
