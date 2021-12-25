package DatabaseFunction;
import java.sql.*;
public class DatabaseConnection {
 private String url= "jdbc:mysql://localhost:3306/demo?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
 private String uid="root";
 private String pwd="122333";
 private static DatabaseConnection instance=null;
 public static DatabaseConnection getInstance(){
  if(instance==null){
   synchronized (DatabaseConnection.class) {
    if(instance==null){
     instance=new DatabaseConnection();
    }
   }
  }
  return instance;
 }
 /**
  *
  * @return
  */
 public Connection getConn(){
  Connection conn=null;
  try {
   Class.forName("com.mysql.cj.jdbc.Driver");
   conn=DriverManager.getConnection(url,uid,pwd);
  } catch (Exception e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
  return conn;
 }

}




