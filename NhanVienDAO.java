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
import javax.servlet.http.HttpServletRequest;
import model.NhanVien;

/**
 *
 * @author Admin
 */
public class NhanVienDAO {

    public static String CheckLogin(HttpServletRequest request, Connection conn, NhanVien nv) {
        PreparedStatement ptmt = null;

        String test = "thatbai";
        String sql = "SELECT nv_tendangnhap,nv_matkhau from nhanvien";

        try {
            ptmt = conn.prepareStatement(sql);
            ResultSet rs = ptmt.executeQuery();
            while (rs.next()) {
                String name = rs.getString("nv_tendangnhap");
                String password = rs.getString("nv_matkhau");
                
                if(nv.getNv_tendangnhap().equals(name)&& tools.MaHoa.MaHoaMD5(nv.getNv_matkhau()).equals(password)){
                    test = "thanhcong";
                }
            }
            ptmt.close();
            rs.close();
        } catch (Exception e) {
            request.setAttribute("msglogin", e.getMessage());
        }

        return test;

    }

    public static int CheckChucvu(HttpServletRequest request, Connection conn, NhanVien nv) {
        PreparedStatement ptmt = null;

        String sql = "SELECT lnv_role from nhanvien where nv_tendangnhap='" + nv.getNv_tendangnhap() + "'AND nv_matkhau='" + tools.MaHoa.MaHoaMD5(nv.getNv_matkhau()) + "'";

        int roleid = 1;

        try {
            ptmt = conn.prepareStatement(sql);
            ResultSet rs = ptmt.executeQuery();

            while (rs.next()) {
                roleid = rs.getInt("lnv_role");

            }
            ptmt.close();
            rs.close();
        } catch (Exception e) {
            request.setAttribute("msglogin", e.getMessage());
        }
        return roleid;

    }

    public static String showHoTen(HttpServletRequest request, Connection conn, NhanVien nv) {
        PreparedStatement ptmt = null;

        String fullname = "";
        String sql = "SELECT nv_hoten from nhanvien where nv_tendangnhap='" + tools.MaHoa.MaHoaMD5(nv.getNv_matkhau()) + "'";

        try {
            ptmt = conn.prepareStatement(sql);
            ResultSet rs = ptmt.executeQuery();
            while (rs.next()) {
                fullname = rs.getString("nv_hoten");

            }
            ptmt.close();
            rs.close();
        } catch (Exception e) {
            request.setAttribute("msglogin", e.getMessage());
        }

        return fullname;

    }

    public static ArrayList<NhanVien> getListTaiKhoan() {
        Connection connection = DBConnection.getConnection();
        String sql = "Select * from nhanvien";
        ArrayList<NhanVien> arr = new ArrayList<NhanVien>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                NhanVien nv = new NhanVien();
                nv.setNv_hoten(rs.getString("nv_hoten"));
                nv.setNv_tendangnhap(rs.getString("nv_tendangnhap"));
                nv.setNv_matkhau(rs.getString("nv_matkhau"));
                nv.setNv_sodt(rs.getString("nv_sodt"));
                nv.setNv_email(rs.getString("nv_email"));
                nv.setNv_quequan(rs.getString("nv_quequan"));
                nv.setLoaiNV(rs.getInt("nv_hopdong"));
                nv.setRole(rs.getInt("lnv_role"));

                arr.add(nv);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }

    public static boolean updateNhanVien(NhanVien nv) {
        Connection connection = DBConnection.getConnection();
        String sql = "UPDATE nhanvien SET nv_ma=?,nv_hoten =?, nv_tendangnhap = ?,nv_matkhau = ?,nv_sodt =?,nv_email =?,nv_quequan=?,lnv_role =?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, nv.getNv_hoten());
            ps.setString(2, nv.getNv_tendangnhap());
            ps.setString(3, tools.MaHoa.MaHoaMD5(nv.getNv_matkhau()));
            ps.setString(4, nv.getNv_sodt());
            ps.setString(5, nv.getNv_email());
            ps.setString(6, nv.getNv_quequan());
            ps.setInt(7,nv.getRole()) ;
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

    public static boolean deleteMember(int userid) {
        try {
            Connection connection = DBConnection.getConnection();
            String sql = "delete from nhanvien where nv_ma=?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, userid);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {

        }
        return false;
    }


    public static NhanVien getTaiKhoanTheoMa(int nv_ma) {
        Connection connection = DBConnection.getConnection();
        String sql = "select * from nhanvien where nv_ma='" + nv_ma + "'";
        NhanVien nv = new NhanVien();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                nv.setNv_hoten(rs.getString("nv_hoten"));
                nv.setNv_matkhau(rs.getString("nv_matkhau"));
                nv.setNv_sodt(rs.getString("nv_sodt"));
                nv.setNv_email(rs.getString("nv_email"));
                nv.setNv_quequan(rs.getString("nv_quequan"));
                nv.setRole(rs.getInt("lnv_role"));

            }
        } catch (SQLException ex) {
        }
        return nv;

    }

    public boolean themTaiKhoan(NhanVien nv) {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO member VALUES(?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setString(1, nv.getNv_hoten());
            ps.setString(2, nv.getNv_tendangnhap());
            ps.setString(3, tools.MaHoa.MaHoaMD5(nv.getNv_matkhau()));
            ps.setString(4, nv.getNv_sodt());
            ps.setString(5, nv.getNv_email());
            ps.setString(6, nv.getNv_quequan());
            ps.setInt(7,nv.getRole()) ;

            boolean kq = ps.execute();
            conn.close();
            return kq;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static boolean checkTaiKhoan(String user) {
        Connection connection = DBConnection.getConnection();
        String sql = "select name from member where name='" + user + "'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (SQLException ex) {
        }
        return false;

    }
    public static void main(String[] args) {
        System.out.println(getListTaiKhoan());
    }
}
