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
import model.KeToan;

/**
 *
 * @author Admin
 */
public class KeToanDAO {

    public static ArrayList<KeToan> getListChamCong() {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT * from chamcong";
        ArrayList<KeToan> arr = new ArrayList<KeToan>();
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KeToan kt = new KeToan();
                kt.setNv_tendangnhap(rs.getString("nv_tendangnhap"));
                kt.setCc_ngaythang(rs.getString("cc_ngaythang"));
                kt.setCc_1(rs.getByte("cc_1"));
                kt.setCc_2(rs.getByte("cc_2"));
                kt.setCc_3(rs.getByte("cc_3"));
                kt.setCc_4(rs.getByte("cc_4"));
                kt.setCc_5(rs.getByte("cc_5"));
                kt.setCc_6(rs.getByte("cc_6"));
                kt.setCc_7(rs.getByte("cc_7"));
                kt.setCc_8(rs.getByte("cc_8"));
                kt.setCc_9(rs.getByte("cc_9"));
                kt.setCc_10(rs.getByte("cc_10"));
                kt.setCc_11(rs.getByte("cc_11"));
                kt.setCc_12(rs.getByte("cc_12"));
                kt.setCc_13(rs.getByte("cc_13"));
                kt.setCc_14(rs.getByte("cc_14"));
                kt.setCc_15(rs.getByte("cc_15"));
                kt.setCc_16(rs.getByte("cc_16"));
                kt.setCc_17(rs.getByte("cc_17"));
                kt.setCc_18(rs.getByte("cc_18"));
                kt.setCc_19(rs.getByte("cc_19"));
                kt.setCc_20(rs.getByte("cc_20"));
                kt.setCc_21(rs.getByte("cc_21"));
                kt.setCc_22(rs.getByte("cc_22"));
                kt.setCc_23(rs.getByte("cc_23"));
                kt.setCc_24(rs.getByte("cc_24"));
                kt.setCc_25(rs.getByte("cc_25"));
                kt.setCc_26(rs.getByte("cc_26"));
                kt.setCc_27(rs.getByte("cc_27"));
                kt.setCc_28(rs.getByte("cc_28"));
                kt.setCc_29(rs.getByte("cc_29"));
                kt.setCc_30(rs.getByte("cc_30"));
                kt.setCc_31(rs.getByte("cc_31"));
                arr.add(kt);

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return arr;
    }
    
    public static void main(String[] args) {
        System.err.println(getListChamCong().toString());
    }
}
