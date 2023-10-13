/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.NhanVien;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.XJdbc;
import java.sql.*;

/**
 *
 * @author kle99
 */
public class NhanVienDAO extends PhoneDAO<NhanVien, String> {

    String insertSql = "INSERT INTO NhanVien (MaNV, TenDangNhap, MatKhau, TenNV, soDienThoai, email, ngaySinh, GioiTinh ngayBatDau, "
            + "DiaChi, ChucVu, MaVT) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    String updateSql = "UPDATE NhanVien set TenDangNhap = ?, MatKhau = ?, TenNV = ?, NgaySinh = ?, ngayBatDau = ?,"
            + "ngayKetThuc = ?, DiaChi = ?, ChucVu = ?, MaVT = ? WHERE MaNV = ?";
    String deleteSql = "DELETE FROM NhanVien WHERE MaNV = ?";
    String selectByID = "SELECT * FROM NhanVien WHERE MaNV = ?";
    String selectAll = "SELECT * FROM NhanVien";

    @Override
    public void insert(NhanVien entity) {
        try {
            XJdbc.update(insertSql, entity.getMaNv(), entity.getTenDangNhap(), entity.getMatKhau(), entity.getTenNv(), entity.getSoDienThoai(), entity.getEmail(), entity.getNgaySinh(), entity.getNgayBatDau(), entity.getDiaChi(), entity.getChucVu(), entity.getMaVt());
        } catch (SQLException ex) {
            Logger.getLogger(NhanVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(NhanVien entity) {
        try {
            XJdbc.update(insertSql, entity.getTenDangNhap(), entity.getMatKhau(), entity.getTenNv(), entity.getSoDienThoai(), entity.getEmail(), entity.getNgaySinh(), entity.getNgayBatDau(), entity.getDiaChi(), entity.getChucVu(), entity.getMaVt(), entity.getMaNv());
        } catch (SQLException ex) {
            Logger.getLogger(NhanVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(String key) {
        try {
            XJdbc.update(deleteSql, key);
        } catch (SQLException ex) {
            Logger.getLogger(NhanVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<NhanVien> selectAll() {
        return this.selectBySql(selectAll);
    }

    @Override
    public NhanVien selectById(String key) {
                List<NhanVien> list = this.selectBySql(selectByID, key);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    protected List<NhanVien> selectBySql(String sql, Object... args) {
                List<NhanVien> list = new ArrayList<>();
        try {
            ResultSet rs = XJdbc.query(sql, args);
            while (rs.next()) {                
                NhanVien nv = new NhanVien();
                nv.setMaNv(rs.getString(1));
                nv.setTenDangNhap(rs.getString(2));
                nv.setMatKhau(rs.getString(3));
                nv.setTenNv(rs.getString(4));
                nv.setSoDienThoai(rs.getInt(5));
                nv.setEmail(rs.getString(6));
                nv.setNgaySinh(rs.getDate(7));
                nv.setGioiTinh(rs.getBoolean(8));
                nv.setNgayBatDau(rs.getDate(9));
                nv.setDiaChi(rs.getString(10));
                nv.setChucVu(rs.getString(11));
                nv.setMaVt(rs.getString(12));
                list.add(nv);
            }
//            rs.close();
            rs.getStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
