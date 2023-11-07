package com.project.vipsCloneCoding.user.service;

import java.security.MessageDigest;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.user.dao.UserDAO;
import com.project.vipsCloneCoding.user.domain.UserVO;

@Service
public class UserService {

  @Autowired
  UserDAO userDAO;

  public UserVO login(UserVO user) {
    try {
      UserVO tempUser = userDAO.get(user.getUserId());

      if (tempUser != null && tempUser.getPw().equals(cryptoPassword(user.getPw(), "SHA-256"))) {
        return tempUser;
      }

    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public void join(UserVO user) {
    userDAO.add(user);
  }

  public void updateAdmin(int id, String member, String location) {
    userDAO.updateMember(id, member);
    userDAO.updateLocation(id, location);
  }


  public List<UserVO> getAllSubAdmin() {
    try {
      return userDAO.getMember("sub_admin");
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public List<UserVO> getAllLowAdmin() {
    try {
      return userDAO.getMember("low_admin");
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }

  public void deleteAdmin(int id) {
    try {
      userDAO.delete(id);
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }

  public UserVO getUser(String user_id) {

    try {
      return userDAO.get(user_id);
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return null;
  }


  private String cryptoPassword(String password, String method) {
    try {
      MessageDigest md = MessageDigest.getInstance(method);
      md.update(password.getBytes());
      byte[] sha256Hash = md.digest();
      StringBuilder sb = new StringBuilder();

      for (byte b : sha256Hash) {
        sb.append(String.format("%02x", b));
      }

      return sb.toString();

    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

}
