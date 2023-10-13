package entity;

import java.util.Date;

public class NhanVien {

    private String maNv;
    private String tenDangNhap;
    private String matKhau;
    private String tenNv;
    private int soDienThoai;
    private String email;
    private Date ngaySinh;
    private boolean gioiTinh;
    private Date ngayBatDau;
    private String diaChi;
    private String chucVu;
    private String maVt;

    public NhanVien() {
    }

    public NhanVien(String maNv, String tenDangNhap, String matKhau, String tenNv, int soDienThoai, String email, Date ngaySinh, boolean gioiTinh, Date ngayBatDau, String diaChi, String chucVu, String maVt) {
        this.maNv = maNv;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.tenNv = tenNv;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.ngayBatDau = ngayBatDau;
        this.diaChi = diaChi;
        this.chucVu = chucVu;
        this.maVt = maVt;
    }

    public String getMaNv() {
        return maNv;
    }

    public void setMaNv(String maNv) {
        this.maNv = maNv;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getTenNv() {
        return tenNv;
    }

    public void setTenNv(String tenNv) {
        this.tenNv = tenNv;
    }

    public int getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(int soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public boolean isGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getChucVu() {
        return chucVu;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }

    public String getMaVt() {
        return maVt;
    }

    public void setMaVt(String maVt) {
        this.maVt = maVt;
    }

    
}
