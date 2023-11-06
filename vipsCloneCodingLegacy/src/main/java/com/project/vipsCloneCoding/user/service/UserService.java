package com.project.vipsCloneCoding.user.service;

import java.security.MessageDigest;
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
