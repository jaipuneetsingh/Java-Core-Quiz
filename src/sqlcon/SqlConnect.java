/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sqlcon;
import java.sql.*;
/**
 *
 * @author install
 */
public class SqlConnect 
{
   public   Connection con ;
   public  SqlConnect()
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          con = DriverManager.getConnection("jdbc:odbc:lib","root","");
            System.out.println("connection Established");
        }
        catch(Exception e)
                {
                    System.out.println("Connection Failed due to : "+e);
                }
    }
  /*  public static void main(String args[])
    {
        sqlconnect c=new sqlconnect();
    }*/
}
