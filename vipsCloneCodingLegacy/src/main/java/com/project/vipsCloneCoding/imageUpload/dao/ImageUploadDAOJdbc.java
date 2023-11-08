package com.project.vipsCloneCoding.imageUpload.dao;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.project.vipsCloneCoding.imageUpload.domain.ImageUploadVO;


@Repository
public class ImageUploadDAOJdbc implements ImageUpoladDAO {

  private JdbcTemplate jdbcTemplate;

  @Autowired
  public ImageUploadDAOJdbc(DataSource dataSource) {
    this.jdbcTemplate = new JdbcTemplate(dataSource);
  }

  public void createImageUploadTable() throws Exception {
    jdbcTemplate
        .update("CREATE TABLE image_table (" + "id NUMBER GENERATED AS IDENTITY PRIMARY KEY, "
            + "image_name VARCHAR2(500), " + "image_path VARCHAR2(500), "
            + "description1 VARCHAR2(500), " + "description2 VARCHAR2(500), "
            + "description3 VARCHAR2(500), " + "description4 VARCHAR2(500), "
            + "description5 VARCHAR2(500), " + "description6 VARCHAR2(500)" + ")");
  }


  @Override
  public void saveImage(ImageUploadVO image) {
    String sql =
        "INSERT INTO image_table (file_name, file_path, description1, description2,description3,description4,description5,description6) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    jdbcTemplate.update(sql, image.getFileName(), image.getFilePath(), image.getDescription1(),
        image.getDescription2(), image.getDescription3(), image.getDescription4(),
        image.getDescription5(), image.getDescription6());
  }


  @Override
  public ImageUploadVO getImageById(int id) {
    String sql = "SELECT * FROM image_table  WHERE id = ?";
    return jdbcTemplate.queryForObject(sql, new Object[] {id}, new RowMapper<ImageUploadVO>() {
      @Override
      public ImageUploadVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new ImageUploadVO(rs.getInt("image_id"), rs.getString("file_name"),
            rs.getString("file_path"), rs.getString("description1"), rs.getString("description2"),
            rs.getString("description3"), rs.getString("description4"),
            rs.getString("description5"), rs.getString("description6"));
      }
    });
  }


  public void deleteImage(int id) {
    ImageUploadVO image = getImageById(id);
    if (image != null && image.getFilePath() != null) {
      File file = new File(image.getFilePath());
      if (file.exists() && file.delete()) {
        String sql = "DELETE FROM images WHERE id = ?";
        jdbcTemplate.update(sql, id);
      }
    }
  }
}
