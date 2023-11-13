package com.project.vipsCloneCoding.imageUpload.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.project.vipsCloneCoding.imageUpload.domain.ImageGroupVO;
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
        String directory = Paths.get("../").toAbsolutePath().toString()
            + "/git/Java4FirstProject/vipsCloneCodingLegacy/src/main/webapp/resources/images/Uploadfile/";
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
    try {
      jdbcTemplate.update("DELETE FROM image_group_mapping WHERE image_id = ?", id);
      jdbcTemplate.update("DELETE FROM image_table WHERE id = ?", id);
    } catch (Exception e) {
      e.printStackTrace();
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

  public void addImageToGroup(int groupId, int imageId, int orderIndex) {
    jdbcTemplate.update(
        "INSERT INTO image_group_mapping (group_id, image_id, order_index) VALUES (?, ?, ?)",
        groupId, imageId, orderIndex);
  }

  public List<ImageUploadVO> listImagesOrdered(int groupId) {
    return jdbcTemplate.query(
        "SELECT it.* FROM image_table it "
            + "INNER JOIN image_group_mapping igm ON it.id = igm.image_id "
            + "WHERE igm.group_id = ? ORDER BY igm.order_index ASC",
        new Object[] {groupId}, new RowMapper<ImageUploadVO>() {
          @Override
          public ImageUploadVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new ImageUploadVO(rs.getInt("id"), rs.getString("image_name"),
                rs.getString("image_path"), rs.getString("description1"),
                rs.getString("description2"), rs.getString("description3"),
                rs.getString("description4"), rs.getString("description5"),
                rs.getString("description6"));
          }
        });
  }

  public void updateImageOrderInGroup(int groupId, int imageId, int newOrderIndex) {
    jdbcTemplate.update(
        "UPDATE image_group_mapping SET order_index = ? WHERE group_id = ? AND image_id = ?",
        newOrderIndex, groupId, imageId);
  }

  public List<ImageGroupVO> getAllImageGroups() {
    return jdbcTemplate.query(
        "SELECT group_id, group_title FROM image_groups ORDER BY group_id ASC",
        new RowMapper<ImageGroupVO>() {
          @Override
          public ImageGroupVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new ImageGroupVO(rs.getInt("group_id"), rs.getString("group_title"));
          }
        });
  }

  public void deleteImageGroup(int groupId) {
    jdbcTemplate.update("DELETE FROM image_group_mapping WHERE group_id = ?", groupId);
    jdbcTemplate.update("DELETE FROM image_groups WHERE group_id = ?", groupId);
  }

  public int createImageGroup(final String groupTitle) {
    final String INSERT_SQL = "INSERT INTO image_groups (group_title) VALUES (?)";
    KeyHolder keyHolder = new GeneratedKeyHolder();

    jdbcTemplate.update(new PreparedStatementCreator() {
      public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
        PreparedStatement ps =
            connection.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, groupTitle);
        return ps;
      }
    }, keyHolder);
    return keyHolder.getKey().intValue();
  }
}
