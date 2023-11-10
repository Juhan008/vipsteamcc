package com.project.vipsCloneCoding.imageUpload.service;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.project.vipsCloneCoding.imageUpload.domain.ImageUploadVO;

@Service
public class ImageUploadService {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public void saveImage(MultipartFile image, String imageName, String description1,
      String description2, String description3, String description4, String description5,
      String description6) {
    try {
      if (!image.isEmpty()) {
        String filename = image.getOriginalFilename();
        String directory =
            "/Users/limjuhan/eclipse-workspace/git/Java4FirstProject/vipsCloneCodingLegacy/src/main/webapp/resources/images/Uploadfile/";
        String filepath = directory + filename;
        File dest = new File(filepath);
        image.transferTo(dest);

        jdbcTemplate.update(
            "INSERT INTO image_table (image_name, image_path, description1, description2, description3, description4, description5, description6) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
            imageName, filepath, description1, description2, description3, description4,
            description5, description6);
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public void deleteImage(int id) {
    String sql = "SELECT image_path FROM image_table WHERE id = ?";
    String filepath = jdbcTemplate.queryForObject(sql, new Object[] {id}, String.class);

    if (filepath != null) {
      try {
        File file = new File(filepath);
        if (file.exists() && file.delete()) {
          jdbcTemplate.update("DELETE FROM image_table WHERE id = ?", id);
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
  }


  public List<ImageUploadVO> listAllImages() {
    return jdbcTemplate.query(
        "SELECT id, image_name, image_path, description1, description2, description3, description4, description5, description6 FROM image_table",
        new RowMapper<ImageUploadVO>() {
          @Override
          public ImageUploadVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            String imagePath = rs.getString("image_path");
            // imagePath에서 '/resources/' 이전의 경로를 제거
            imagePath = imagePath.replaceFirst("^.*(/resources/.*)$", "$1");
            // ImageUploadVO 객체를 생성자를 통해 초기화
            return new ImageUploadVO(rs.getInt("id"), rs.getString("image_name"), imagePath,
                rs.getString("description1"), rs.getString("description2"),
                rs.getString("description3"), rs.getString("description4"),
                rs.getString("description5"), rs.getString("description6"));
          }
        });
  }
}
