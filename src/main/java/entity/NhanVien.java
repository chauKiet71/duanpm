package entity;

import java.util.Date;

public class NhanVien {

    private String maNv;
    private String tenDangNhap;
    private String matKhau;
    private String tenNv;
    private Date ngaySinh;
    private Date ngayBatDau;
    private Date ngayKetthuc;
    private String diaChi;
    private String chucVu;
    private String maVt;

    public NhanVien() {
    }

    public NhanVien(String maNv, String tenDangNhap, String matKhau, String tenNv, Date ngaySinh, Date ngayBatDau, Date ngayKetthuc, String diaChi, String chucVu, String maVt) {
        this.maNv = maNv;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.tenNv = tenNv;
        this.ngaySinh = ngaySinh;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetthuc = ngayKetthuc;
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

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public Date getNgayKetthuc() {
        return ngayKetthuc;
    }

    public void setNgayKetthuc(Date ngayKetthuc) {
        this.ngayKetthuc = ngayKetthuc;
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
