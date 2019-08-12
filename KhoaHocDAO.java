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
import model.KhoaHoc;

/**
 *
 * @author Admin
 */
public class KhoaHocDAO {

    public static ArrayList<KhoaHoc> getListKhoaHoc() {
        Connection connection = DBConnection.getConnection();
        String sql = "Select * from khoahoc";
        ArrayList<KhoaHoc> arr = new ArrayList<KhoaHoc>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KhoaHoc kh = new KhoaHoc();
                kh.setK_ma(rs.getInt("k_ma"));
                kh.setK_ten(rs.getString("k_ten"));
                kh.setK_hocphi(rs.getInt("k_hocphi"));
                kh.setK_chitiet(rs.getString("k_chitiet"));

                arr.add(kh);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }

    public static KhoaHoc getKhoaHocTheoMa(int ma) {
        Connection connection = DBConnection.getConnection();
        String sql = "select * from khoahoc where k_ma='" + ma + "'";
        KhoaHoc kh = new KhoaHoc();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                kh.setK_ma(rs.getInt("k_ma"));
                kh.setK_ten(rs.getString("k_ten"));
                kh.setK_hocphi(rs.getInt("k_hocphi"));
                kh.setK_chitiet(rs.getString("k_chitiet"));

            }
        } catch (SQLException ex) {
        }
        return kh;

    }

    public static boolean themKhoaHoc(int k_ma, String k_ten, int k_hocphi, String k_chitiet) {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO khoahoc VALUES(?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setInt(1, k_ma);
            ps.setString(2, k_ten);
            ps.setInt(3, k_hocphi);
            ps.setString(4, k_chitiet);

            boolean kq = ps.execute();
            conn.close();
            return kq;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static boolean capnhatKhoaHoc(KhoaHoc kh) {
        Connection connection = DBConnection.getConnection();
        String sql = "UPDATE khoahoc SET "
                + "k_ten=?,k_hocphi=?,k_chitiet=? where k_ma=?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, kh.getK_ten());
            ps.setInt(2, kh.getK_hocphi());
            ps.setString(3, kh.getK_chitiet());
            ps.setInt(4, kh.getK_ma());

            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

    
    public static boolean xoaKhoaHoc(int k_ma) {
        try {
            Connection connection = DBConnection.getConnection();
            String sql = "delete from khoahoc where k_ma=?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, k_ma);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {

        }
        return false;
    }

    public static void main(String[] args) {

        KhoaHoc kh = new KhoaHoc(1, "hhas", 111, "124214");
        capnhatKhoaHoc(kh);
    }
}
