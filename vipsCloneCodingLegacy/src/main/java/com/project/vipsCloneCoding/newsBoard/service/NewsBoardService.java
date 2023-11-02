package com.project.vipsCloneCoding.newsBoard.service;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.newsBoard.dao.NewsBoardDAO;

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

  public Date getCreatedAt(int i) {
    try {
      return newsBoardDAO.getNewsBoardTable(i).getCreatedAt();
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

  public String isDelete(int i) {
    try {
      return newsBoardDAO.getNewsBoardTable(i).getIsDelete();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public int tableFinish() {

    try {
      return newsBoardDAO.getNewsBoardFinalTable().getId();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return 0;
  }

}
