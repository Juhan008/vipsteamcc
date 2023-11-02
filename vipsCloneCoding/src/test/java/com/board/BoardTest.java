package test.java.com.board;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import main.java.com.board.NewsBoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration
@Repository
public class BoardTest {

  @Autowired
  NewsBoardDAO newsBoardDAO;

  @Test
  public void get() throws Exception {
    newsBoardDAO.dropTable();
    newsBoardDAO.createNewsBoardTable();
  }
}
