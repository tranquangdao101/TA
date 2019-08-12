/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.NhanVienDAO;
import connectdb.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.NhanVien;

/**
 *
 * @author Admin
 */
public class NhanVienController extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("command").equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect(request.getContextPath()+"/view/login.jsp");
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        

        Connection conn = DBConnection.getConnection();
        String tendangnhap = request.getParameter("nv_tendangnhap");
        String matkhau = request.getParameter("nv_matkhau");

        NhanVien nv = new NhanVien();
        nv.setNv_tendangnhap(tendangnhap);
        nv.setNv_matkhau(matkhau);

        String hoten = NhanVienDAO.showHoTen(request, conn, nv);

        String err = "";
        String CheckLogin = NhanVienDAO.CheckLogin(request, conn, nv);

        if ((NhanVienDAO.checkTaiKhoan(tendangnhap) == false)) {
            err = "Tài khoản hoặc mật khẩu không đúng";
        }
        if (err.length() > 0) {
            request.setAttribute("err", err);
        }
        String url = "view/login.jsp";

        try {
            if (CheckLogin.equals("thanhcong")) {
                int quyentruycap = NhanVienDAO.CheckChucvu(request, conn, nv);
                
                if ( quyentruycap == 1 ){
                    HttpSession seesion = request.getSession(true);
                    seesion.setAttribute("session", hoten);

                    response.sendRedirect(request.getContextPath()+"/index.jsp");    
                } else if ( quyentruycap == 2 ){
                    HttpSession seesion = request.getSession(true);
                    seesion.setAttribute("session", hoten);

                    response.sendRedirect(request.getContextPath()+"/view/indexkt.jsp");
                } else if ( quyentruycap == 3 ){
                    HttpSession seesion = request.getSession(true);
                    seesion.setAttribute("session", hoten);

                    response.sendRedirect(request.getContextPath()+"/view/indexhv.jsp");
                }

            }
        } catch (Exception e) {

        }

    }

}
