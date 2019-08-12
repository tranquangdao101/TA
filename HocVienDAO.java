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
import model.HocVien;
import model.KhoaHoc;

/**
 *
 * @author Admin
 */
public class HocVienDAO {

    public static ArrayList<HocVien> getListHocVien() {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT hp_thanhtoan,hp_datenop,hp_ma,hv_hoten,hv.hv_sodt,hv_email,hv_quequan,hv_diem,l_ten,k_ten,k_hocphi FROM hocphihv hp JOIN hocvien hv on hp.hv_sodt = hv.hv_sodt JOIN lop l on hp.l_ma = l.l_ma JOIN khoahoc k on hp.k_ma = k.k_ma";
        ArrayList<HocVien> arr = new ArrayList<HocVien>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                HocVien hv = new HocVien();
                hv.setHv_hoten(rs.getString("hv_hoten"));
                hv.setHv_sodt(rs.getString("hv_sodt"));
                hv.setHv_email(rs.getString("hv_email"));
                hv.setHv_quequan(rs.getString("hv_quequan"));
                hv.setHv_diem(rs.getInt("hv_diem"));
                hv.setL_ten(rs.getString("l_ten"));
                hv.setK_ten(rs.getString("k_ten"));
                hv.setK_hocphi(rs.getInt("k_hocphi"));
                hv.setHp_ma(rs.getInt("hp_ma"));
                hv.setHp_thanhtoan(rs.getString("hp_thanhtoan"));
                hv.setHp_datenop(rs.getString("hp_datenop"));
                arr.add(hv);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }
   
    public static ArrayList<HocVien> timkiemHocVien(String chuoi) {
        Connection   connection = DBConnection.getConnection();
        String sql = "SELECT hp_ma,hv_hoten,hv.hv_sodt,hv_email,hv_quequan,hv_diem,l_ten,k_ten,k_hocphi FROM hocphihv hp JOIN hocvien hv on hp.hv_sodt = hv.hv_sodt JOIN lop l on hp.l_ma = l.l_ma JOIN khoahoc k on hp.k_ma = k.k_ma where hv.hv_hoten like '%"+ chuoi +"%'";
        ArrayList<HocVien> arr = new ArrayList<HocVien>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                HocVien hv = new HocVien();
                hv.setHv_hoten(rs.getString("hv_hoten"));
                hv.setHv_sodt(rs.getString("hv_sodt"));
                hv.setHv_email(rs.getString("hv_email"));
                hv.setHv_quequan(rs.getString("hv_quequan"));
                hv.setHv_diem(rs.getInt("hv_diem"));
                hv.setL_ten(rs.getString("l_ten"));
                hv.setK_ten(rs.getString("k_ten"));
                hv.setK_hocphi(rs.getInt("k_hocphi"));
                hv.setHp_ma(rs.getInt("hp_ma"));
                arr.add(hv);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }
//    public static boolean updateHocVien(HocVien hv) {
//        Connection connection = DBConnection.getConnection();
//        String sql = "UPDATE nhahvien SET hv_hoten =?, hv_tendangnhap = ?,hv_matkhau = ?,hv_sodt =?,hv_email =?,hv_quequan=?,lhv_role =? where hp_ma";
//        HocVien hv = new HocVien();
//        try {
//            PreparedStatement ps = connection.prepareCall(sql);
//            ps.setString(1, hv.getNv_hoten());
//            ps.setString(2, hv.getNv_tendangnhap());
//            ps.setString(3, hv.getNv_matkhau());
//            ps.setString(4, hv.getNv_sodt());
//            ps.setString(5, hv.getNv_email());
//            ps.setString(6, hv.getNv_quequan());
//            ps.setInt(7,hv.getRole()) ;
//            return ps.executeUpdate() == 1;
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        }
//        return false;
//    }
    public static boolean deleteHocVien(int userid) {
        try {
            Connection connection = DBConnection.getConnection();
            String sql = "delete from hocphihv where hp_ma=?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, userid);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {

        }
        return false;
    }

    public static ArrayList<HocVien> thongkeHocVien(int x, int y) {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT * from hocvien where hv_diem between " + x + "and " + y;
        ArrayList<HocVien> arr = new ArrayList<HocVien>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                HocVien hv = new HocVien();
                hv.setHv_hoten(rs.getString("hv_hoten"));
                hv.setHv_sodt(rs.getString("hv_sodt"));
                hv.setHv_email(rs.getString("hv_email"));
                hv.setHv_quequan(rs.getString("hv_quequan"));
                hv.setHv_diem(rs.getInt("hv_diem"));

                arr.add(hv);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }

    public static boolean themHocVien(String hv_hoten, String hv_sodt, String hv_email, String hv_quequan, int hv_diem) {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO hocvien VALUES(?,?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setString(1, hv_hoten);
            ps.setString(2, hv_sodt);
            ps.setString(3, hv_email);
            ps.setString(4, hv_quequan);
            ps.setInt(5, hv_diem);

            boolean kq = ps.execute();
            conn.close();
            return kq;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static boolean themHocVienStep2(int hp_ma, String hv_sodt, int l_ma, int k_ma) {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO hocphihv(hp_ma,hv_sodt,l_ma,k_ma) VALUES (?,?,?,?)";

        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setInt(1, hp_ma);
            ps.setString(2, hv_sodt);
            ps.setInt(3, l_ma);
            ps.setInt(4, k_ma);

            boolean kq = ps.execute();
            conn.close();
            return kq;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static HocVien getHocVienTheoMa(String sodt) {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT hv_hoten,hv.hv_sodt,hv_email,hp_thanhtoan,hv_quequan,hv_diem,l_ten,k_ten,k_hocphi FROM hocphihv hp JOIN hocvien hv on hp.hv_sodt = hv.hv_sodt JOIN lop l on hp.l_ma = l.l_ma JOIN khoahoc k on hp.k_ma = k.k_ma WHERE hv.hv_sodt='" + sodt + "'";
        HocVien hv = new HocVien();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                hv.setHv_hoten(rs.getString("hv_hoten"));
                hv.setHv_sodt(rs.getString("hv_sodt"));
                hv.setHv_quequan(rs.getString("hv_quequan"));
                hv.setL_ten(rs.getString("l_ten"));
                hv.setK_ten(rs.getString("k_ten"));
                hv.setHp_thanhtoan(rs.getString("hp_thanhtoan"));
                hv.setK_hocphi(rs.getInt("k_hocphi"));
                hv.setHv_email(rs.getString("hv_email"));
            }
        } catch (SQLException ex) {
        }
        return hv;

    }
    
    public static HocVien getHocVienTheoMaHocPhi(int hp_ma) {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT hv_hoten,hv.hv_sodt,hv_email,hp_thanhtoan,hv_quequan,hv_diem,l_ten,k_ten,k_hocphi FROM hocphihv hp JOIN hocvien hv on hp.hv_sodt = hv.hv_sodt JOIN lop l on hp.l_ma = l.l_ma JOIN khoahoc k on hp.k_ma = k.k_ma WHERE hp.hp_ma='" + hp_ma + "'";
        HocVien hv = new HocVien();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                hv.setHv_hoten(rs.getString("hv_hoten"));
                hv.setHv_sodt(rs.getString("hv_sodt"));
                hv.setHv_quequan(rs.getString("hv_quequan"));
                hv.setL_ten(rs.getString("l_ten"));
                hv.setK_ten(rs.getString("k_ten"));
                hv.setHp_thanhtoan(rs.getString("hp_thanhtoan"));
                hv.setK_hocphi(rs.getInt("k_hocphi"));
                hv.setHp_ma(rs.getInt("hp_ma"));

            }
        } catch (SQLException ex) {
        }
        return hv;

    }
    
    public static boolean updateHocVien(String hv_hoten, String hv_sodt, String hv_email, String hv_quequan,int hv_diem) {
        Connection connection = DBConnection.getConnection();
        String sql = "UPDATE hocvien SET hv_hoten=?,"
                + "hv_email=?,hv_quequan=?,hv_diem=? where hv_sodt=?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);

            ps.setString(1, hv_hoten);
            ps.setString(2, hv_email);
            ps.setString(3, hv_quequan);
            ps.setInt(4, hv_diem);
            ps.setString(5, hv_sodt);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }
    public static void main(String[] args) {
        System.out.println(getListHocVien());

//        themHocVienStep2(124214, "0971231241", 1, 2);

//        System.out.println(getHocVienTheoMa("966914104"));

//        updateHocVien("Quôốc Đạo", "82184", "2222", "222", 7);

    }

}
