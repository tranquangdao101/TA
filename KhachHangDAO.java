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
import model.KhachHang;
import model.KhoaHoc;

/**
 *
 * @author Admin
 */
public class KhachHangDAO {
    
    public static ArrayList<KhachHang> getListTaiKhoan() {
        Connection connection = DBConnection.getConnection();
        String sql = "Select * from tuvankhachhang";
        ArrayList<KhachHang> arr = new ArrayList<KhachHang>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KhachHang kh = new KhachHang();
                kh.setKh_ma(rs.getInt("kh_ma"));
                kh.setKh_tieude(rs.getString("kh_tieude"));
                kh.setKh_nguoigui(rs.getString("kh_nguoigui"));
                kh.setKh_email(rs.getString("kh_email"));
                kh.setKh_datengaygui(rs.getString("kh_datengaygui"));
                kh.setKh_tinhtang(rs.getByte("kh_tinhtrang"));
                
                arr.add(kh);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }
    
    public static ArrayList<KhachHang> getListTaiKhoanChuaXem() {
        Connection connection = DBConnection.getConnection();
        String sql = "Select * from tuvankhachhang where kh_tinhtrang='0'";
        ArrayList<KhachHang> arr = new ArrayList<KhachHang>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KhachHang kh = new KhachHang();
                kh.setKh_ma(rs.getInt("kh_ma"));
                kh.setKh_tieude(rs.getString("kh_tieude"));
                kh.setKh_nguoigui(rs.getString("kh_nguoigui"));
                kh.setKh_email(rs.getString("kh_email"));
                kh.setKh_datengaygui(rs.getString("kh_datengaygui"));
                kh.setKh_tinhtang(rs.getByte("kh_tinhtrang"));
                
                arr.add(kh);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }
    public static KhachHang getKhachHangTheoMa(int kh_ma) {
        Connection connection = DBConnection.getConnection();
        String sql = "Select * from tuvankhachhang where kh_ma='"+kh_ma +"'";
        KhachHang kh = new KhachHang();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                kh.setKh_ma(rs.getInt("kh_ma"));
                kh.setKh_tieude(rs.getString("kh_tieude"));
                kh.setKh_nguoigui(rs.getString("kh_nguoigui"));
                kh.setKh_email(rs.getString("kh_email"));
                kh.setKh_datengaygui(rs.getString("kh_datengaygui"));
                kh.setKh_noidung(rs.getString("kh_noidung"));
                kh.setKh_tinhtang(rs.getByte("kh_tinhtrang"));
            }
        } catch (SQLException ex) {
        }
        return kh;

    }
    
    public static boolean capnhatTuVan(int kh_ma) {
        Connection connection = DBConnection.getConnection();
        String sql = "UPDATE tuvankhachhang SET "
                + "kh_tinhtrang='1' where kh_ma='"+kh_ma+"'";
        try {
            PreparedStatement ps = connection.prepareCall(sql);

            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }
    
    public static boolean themKhachHang(KhachHang kh) {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO tuvankhachhang VALUES(?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setInt(1, kh.getKh_ma());
            ps.setString(2, kh.getKh_tieude());
            ps.setString(3, kh.getKh_nguoigui());
            ps.setString(4, kh.getKh_email());
            ps.setString(5, kh.getKh_datengaygui());
            ps.setString(6, kh.getKh_noidung());
            ps.setInt(7, kh.getKh_tinhtang()) ;

            boolean kq = ps.execute();
            conn.close();
            return kq;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static boolean deleteTuVan(int kh_ma) {
        try {
            Connection connection = DBConnection.getConnection();
            String sql = "delete from tuvankhachhang where kh_ma=?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, kh_ma);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {

        }
        return false;
    }

    public static void main(String[] args) {
        System.err.println(getKhachHangTheoMa(11323));
        
        KhachHang kh = getKhachHangTheoMa(11323);
        System.out.println(kh.getKh_nguoigui());
        System.out.println(kh.getKh_email());
        
    }
}
