package com.project.vipsCloneCoding.newsBoard.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.newsBoard.dao.NewsBoardDAO;
import com.project.vipsCloneCoding.newsBoard.domain.NewsBoardVO;

@Service
public class NewsBoardService {
  @Autowired
  NewsBoardDAO newsBoardDAO;

  public String getTitle(int i) {

    try {
      return newsBoardDAO.getNewsBoardTable(i).getTitle();

    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public String getCreatedAt(int i) {
    try {
      Date temp = newsBoardDAO.getNewsBoardTable(i).getCreatedAt();
      SimpleDateFormat simple = new SimpleDateFormat("yyyy.MM.dd");
      return simple.format(temp);
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public int getId(int i) {
    try {
      return newsBoardDAO.getNewsBoardTable(i).getId();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return 0;
  }

  public int getView(int i) {
    try {
      return newsBoardDAO.getNewsBoardTable(i).getView();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return 0;
  }

  public String getContents(int i) {
    try {
      return newsBoardDAO.getNewsBoardTable(i).getContents();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public int tableFinish() {
    try {
      return newsBoardDAO.countTable().getCount();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return 0;
  }

  public int tableBottomController() {

    int temp = newsBoardDAO.countTable().getCount() / 10;

    if (newsBoardDAO.countTable().getCount() % 10 != 0) {
      temp = temp + 1;
    }
    return temp;
  }


  public List<NewsBoardVO> getLastTen() {
    try {
      return newsBoardDAO.getLastTen();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public List<NewsBoardVO> getLastTen(int controll) {
    try {
      return newsBoardDAO.getLastTen(controll);
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public void upView(int id) {
    try {
      newsBoardDAO.updateView(id, newsBoardDAO.getNewsBoardTable(id).getView() + 1);
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } ;
  }
}
