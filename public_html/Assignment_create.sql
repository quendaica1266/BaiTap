-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:14:16.976




-- tables
-- Table TN_NhanVien
CREATE TABLE TN_NhanVien (
    MaNV int    NOT NULL ,
    TenNV text    NOT NULL ,
    NgaySinh date    NOT NULL ,
    GioiTinh text    NOT NULL ,
    Email text    NOT NULL ,
    MucLuong text    NOT NULL ,
    MaPhong int    NOT NULL ,
    TPhongban_MaPhong int    NOT NULL ,
    CONSTRAINT TN_NhanVien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    MaPhong int    NOT NULL ,
    TenPhong text    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TN_NhanVien_TPhongban (table: TN_NhanVien)


ALTER TABLE TN_NhanVien ADD CONSTRAINT TN_NhanVien_TPhongban FOREIGN KEY TN_NhanVien_TPhongban (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong);



-- End of file.

