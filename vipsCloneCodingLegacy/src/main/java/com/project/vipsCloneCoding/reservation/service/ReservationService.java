package com.project.vipsCloneCoding.reservation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.reservation.dao.ReservationDAO;

@Service
public class ReservationService {

  @Autowired
  ReservationDAO reservationDAO;

  public int getAllControllSize() {
    int tempsize = 0;
    try {
      tempsize = reservationDAO.getAllTable().size() / 10;

      if (reservationDAO.getAllTable().size() % 10 != 0) {
        tempsize = tempsize + 1;
      }

    } catch (Exception e) {
      e.printStackTrace();
    }
    return tempsize;
  }

  public int getLocationControllSize(String location) {
    int tempsize = 0;
    try {
      tempsize = reservationDAO.getAllTable(location).size() / 10;

      if (reservationDAO.getAllTable().size() % 10 != 0) {
        tempsize = tempsize + 1;
      }

    } catch (Exception e) {
      e.printStackTrace();
    }
    return tempsize;
  }

}
