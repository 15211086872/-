package product;
import java.io.*;


public class Category implements Serializable {

  /* 私有字段 */

  private String categoryId;
  private String name;
  private String description;

  /* JavaBean属性访问方法 */

  public String getCategoryId() { return categoryId; }
  public void setCategoryId(String categoryId) { this.categoryId = categoryId.trim(); }

  public String getName() { return name; }
  public void setName(String name) { this.name = name; }

  public String getDescription() { return description; }
  public void setDescription(String description) { this.description = description; }

   /**共公方法*/

  public String toString() {
    return getCategoryId();
  }

}
