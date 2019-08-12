/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connectdb.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Lop;

/**
 *
 * @author Admin
 */
public class LopDAO {

    public static ArrayList<Lop> getListLop() {
        Connection connection = DBConnection.getConnection();
        String sql = "Select * from lop";
        ArrayList<Lop> arr = new ArrayList<Lop>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Lop l = new Lop();
                l.setL_ma(rs.getInt("l_ma"));
                l.setL_ten(rs.getString("l_ten"));
                l.setL_trangthai(rs.getString("l_trangthai"));
                l.setL_datebatdau(rs.getString("l_datebatdau"));
                l.setL_dateketthuc(rs.getString("l_dateketthuc"));
                l.setL_trinhdo(rs.getString("l_trinhdo"));
                l.setL_sobuoi(rs.getInt("l_sobuoi"));

                arr.add(l);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }

    public static Lop getLopTheoMa(int ma) {
        Connection connection = DBConnection.getConnection();
        String sql = "select * from lop where l_ma='" + ma + "'";
        Lop l = new Lop();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                l.setL_ma(rs.getInt("l_ma"));
                l.setL_ten(rs.getString("l_ten"));
                l.setL_trangthai(rs.getString("l_trangthai"));
                l.setL_datebatdau(rs.getString("l_datebatdau"));
                l.setL_dateketthuc(rs.getString("l_dateketthuc"));
                l.setL_trinhdo(rs.getString("l_trinhdo"));
                l.setL_sobuoi(rs.getInt("l_sobuoi"));
            }
        } catch (SQLException ex) {
        }
        return l;

    }

    public static boolean themLop(int l_ma, String l_ten, String l_trangthai, String l_datebatdau, String l_dateketthuc, String l_trinhdo, int l_sobuoi) {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO lop VALUES(?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setInt(1, l_ma);
            ps.setString(2, l_ten);
            ps.setString(3, l_trangthai);
            ps.setString(4, l_datebatdau);
            ps.setString(5, l_dateketthuc);
            ps.setString(6, l_trinhdo);
            ps.setInt(7, l_sobuoi);

            boolean kq = ps.execute();
            conn.close();
            return kq;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static boolean capnhatLop(int l_ma, String l_ten, String l_trangthai, String l_datebatdau, String l_dateketthuc, String l_trinhdo, int l_sobuoi) {
        Connection connection = DBConnection.getConnection();
        String sql = "UPDATE lop SET "
                + "l_ten=?,l_trangthai=?,l_datebatdau=?,l_dateketthuc =?, l_trinhdo=?,l_sobuoi=? where l_ma=?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, l_ten);
            ps.setString(2, l_trangthai);
            ps.setString(3, l_datebatdau);
            ps.setString(4, l_dateketthuc);
            ps.setString(5, l_trinhdo);
            ps.setInt(6, l_sobuoi);
            ps.setInt(7, l_ma);

            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

    public static boolean xoaLop(int k_ma) {
        try {
            Connection connection = DBConnection.getConnection();
            String sql = "delete from lop where l_ma=?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, k_ma);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {

        }
        return false;
    }
}
