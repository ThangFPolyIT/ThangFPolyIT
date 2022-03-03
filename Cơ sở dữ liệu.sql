CREATE DATABASE thuvien_mssv;
-- tạo bảng sinh viên
CREATE TABLE thuvien_mssv.SINHVIEN(
MaSV VARCHAR(10) NOT NULL,
TenSV VARCHAR(50) NOT NULL,
MaLop VARCHAR(10) NOT NULL,
NgayHetHan Date NOT NULL,
Email VARCHAR(150) NOT NULL,
SDT Int NOT NULL,
PRIMARY KEY (MaSV)
);
-- tạo bảng loại sách
CREATE TABLE thuvien_mssv.LOAISACH(
MaLoai VARCHAR(10) NOT NULL,
LoaiSach VARCHAR(50) NOT NULL,
PRIMARY KEY (MaLoai)
);
-- tạo bảng sách
CREATE TABLE thuvien_mssv.SACH(
MaSach VARCHAR(10) NOT NULL,
TenSach VARCHAR(50) NOT NULL,
TacGia VARCHAR(50) NOT NULL,
SoLuong int NOT NULL,
MaLoai VARCHAR(10) NOT NULL,
NXB VARCHAR(50) NOT NULL,
GiaTien float NOT NULL,
NgayNhapKho Date NOT NULL,
SoTrang int,
ViTriDatSach VARCHAR(50),
PRIMARY KEY (MaSach),
FOREIGN KEY (MaLoai) REFERENCES thuvien_mssv.LOAISACH(MaLoai)
);
-- tạo bảng phiếu mượn
CREATE TABLE thuvien_mssv.PHIEUMUON(
MaPhieu VARCHAR(10) NOT NULL,
MaSV VARCHAR(10) NOT NULL,
NgayMuon date NOT NULL,
NgayTra date NOT NULL,
GhiChu VARCHAR(255) NOT NULL,
PRIMARY KEY (MaPhieu),
FOREIGN KEY (MaSV) REFERENCES thuvien_mssv.THESINHVIEN(MaSV)
);
-- tạo bảng chi tiết phiếu mượn
CREATE TABLE thuvien_mssv.CHITIET_PM(
MaPhieu VARCHAR(10) NOT NULL,
MaSach VARCHAR(10) NOT NULL,
GhiChu VARCHAR(255),
PRIMARY KEY (MaPhieu, MaSach), 
FOREIGN KEY (MaPhieu) REFERENCES thuvien_mssv.PHIEUMUON(MaPhieu),
FOREIGN KEY (MaSach) REFERENCES thuvien_mssv.SACH(MaSach)
);

insert into loaisach( MaLoai, LoaiSach)
values (N'IT', N'CÔNG NGHỆ THÔNG TIN'),
(N'KT', N'KINH TẾ'),
(N'KS', N'KHÁCH SẠN'),
(N'DH', N'ĐỒ HỌA'),
(N'EN', N'TIẾNG ANH');

insert into sach(MaSach, TenSach, NXB, TacGia, SoLuong, GiaTien, NgayNhapKho, ViTriDatSach, MaLoai, SoTrang)
values (N'ACC1013', N'NGUYÊN LÝ KẾ TOÁN', N'FPT', 'LÊ DUẨN', '100', '120000', '2019/12/12', '1', N'KT', '200'),
(N'ACC2043', N'KẾ TOÁN QUẢN TRỊ', N'FPT', 'LÊ DUẨN', '100', '120000', '2019/12/12', '1', N'KT', '200'),
(N'BUS2042', N'QUẢN TRỊ BÁN HÀNG', N'FPT', 'LÊ DUẨN', '100', '120000', '2019/12/12', '1', N'KT', '200'),
(N'COM1012', N'TIN HỌC CƠ SỞ', N'FPT', 'LÊ DUẨN', '105', '150000', '2019/12/12', '1', N'IT', '200'),
(N'COM1022',N'TIN HỌC VĂN PHÒNG', N'FPT', 'LÊ DUẨN', '150', '150000', '2019/12/12', '1', N'IT', '200'),
(N'COM1032',N'THIẾT LẬP VÀ QUẢN TRỊ MÁY TÍNH', N'FPT', 'LÊ DUẨN', '100', '120000', '2019/12/12', '1', N'IT', '200'),
(N'COM2012',N'CƠ SỞ DỮ LIỆU', N'FPT', 'LÊ DUẨN', '105', '120000', '2019/12/12', '1', N'IT', '200'),
(N'HIS',N'CƠ SỞ VĂN HÓA VIỆT NAM', N'FPT', 'LÊ DUẨN', '70', '120000', '2014/12/12', '1', N'KS', '200'),
(N'HOS',N'NGHIỆP VỤ LỄ TÂN', N'FPT', 'LÊ HÔNG PHONG', '35', '100000', '2014/12/12', '1', N'KS', '300'),
(N'MOB103',N'LẬP TRÌNH ANDROID CƠ BẢN', N'FPT', 'LÊ DUẨN', '70', '120000', '2014/12/12', '1', N'IT', '200');

insert into thesinhvien( MaSV, TenSV, NgayHetHan, MaLop, Email, SDT)
values (N'PD02728', N'NGUYỄN HỮU TOẢN', '2022/12/12', N'UDPM', N'TOAN@FPT.EDU.VN', '0909'),
(N'PD02729', N'NGUYỄN LƯƠNG QUANG', '2022/12/12', N'LTMB', N'QUANG@FPT.EDU.VN', '0909'),
(N'PD02730', N'NGUYỄN TRỌNG SƠN', '2022/12/12', N'TKDH', N'SON@FPT.EDU.VN', '0909'),
(N'PD02731', N'NGUYỄN THANH HẬU', '2022/12/12', N'KT', N'HAU@FPT.EDU.VN', '0909'),
(N'PD02732', N'TRẦN VĂN QUANG', '2022/12/12', N'LTMB', N'QUANG@FPT.EDU.VN', '0909'),
(N'PD02733', N'NGUYỄN CAO CƯỜNG', '2022/12/12', N'TKDH', N'CUONG@FPT.EDU.VN', '0909'),
(N'PD02734', N'ĐOÀN VĂN THÀNH', '2022/12/12', N'KT', N'THANH@FPT.EDU.VN', '0909'),
(N'PD02735', N'TRỊNH VĂN HIẾU', '2022/12/12', N'UDPM', N'HIEU@FPT.EDU.VN', '0909'),
(N'PD02736', N'TRƯƠNG THẾ HIẾU', '2022/12/12', N'KT', N'HIEUTT@FPT.EDU.VN', '0909'),
(N'PD02737', N'NGUYỄN VĂN THANH TÙNG', '2022/12/12', N'TKDH', N'TUNG@FPT.EDU.VN', '0909'),
(N'PD02738', N'CHÂU QUANG TÂM', '2022/12/12', N'LTMB', N'TAM@FPT.EDU.VN', '0909'),
(N'PD02739', N'TRẦN HOÀI DƯƠNG', '2022/12/12', N'LTMB', N'DUONG@FPT.EDU.VN', '0909'),
(N'PD02740', N'PHẠM THANH TÂM', '2022/12/12', N'UDPM', N'TAMPT@FPT.EDU.VN', '0909');

INSERT INTO phieumuon(MaPhieu, MaSV, NgayMuon, NgayTra, GhiChu)
values (N'PM01', N'PD02728', '2020/04/16', '2020/04/23', N'ĐÃ TRẢ'),
(N'PM02', N'PD02729', '2020/04/16', '2020/04/23', N'ĐÃ TRẢ'),
(N'PM03', N'PD02730', '2020/03/01', '2020/03/08', N'CHƯA TRẢ'),
(N'PM04', N'PD02731', '2020/03/07','2020/03/15', N'CHƯA TRẢ'),
(N'PM05', N'PD02732', '2020/04/16', '2020/04/23', N'ĐÃ TRẢ'),
(N'PM06', N'PD02733', '2020/03/23', '2020/03/30', N'CHƯA TRẢ'),
(N'PM07', N'PD02734', '2020/03/23','2020/03/30', N'ĐÃ TRẢ'),
(N'PM08', N'PD02735', '2020/02/17','2020/02/23', N'CHƯA TRẢ'),
(N'PM09', N'PD02736', '2020/04/16', '2020/04/23', N'CHƯA TRẢ'),
(N'PM10', N'PD02737', '2020/05/02','2020/05/07', N'ĐÃ TRẢ'),
(N'PM11', N'PD02738', '2020/02/17','2020/02/23', N'CHƯA TRẢ'),
(N'PM12', N'PD02739', '2020/04/16','2020/04/23' , N'ĐÃ TRẢ'),
(N'PM13', N'PD02740', '2020/04/25','2020/05/02', N'CHƯA TRẢ'),
(N'PM14', N'PD02738', '2020/04/25','2020/05/02', N'CHƯA TRẢ'),
(N'PM15', N'PD02739', '2020/04/16', '2020/04/23', N'ĐÃ TRẢ'),
(N'PM16', N'PD02740', '2020/02/10','2020/02/17', N'CHƯA TRẢ'),
(N'PM17', N'PD02738', '2020/04/16', '2020/04/23', N'ĐÃ TRẢ'),
(N'PM18', N'PD02739', '2020/01/19','2020/01/26', N'CHƯA TRẢ'),
(N'PM19', N'PD02740', '2020/04/07','2020/04/15', N'CHƯA TRẢ'),
(N'PM20', N'PD02740', '2020/01/26','2020/02/02', N'ĐÃ TRẢ');

INSERT INTO chitiet_pm(MaPhieu, MaSach, GhiChu)
VALUES ('PM01', N'COM1022', null),
('PM02', N'MOB103', null),
('PM03', N'COM1012', null),
('PM04', N'ACC1013', null),
('PM05', N'MOB103', null),
('PM06', N'COM1012', null),
('PM07', N'ACC2043', null),
('PM08', N'COM1022', null),
('PM09', N'BUS2042', null),
('PM10', N'COM1012', null),
('PM11', N'MOB103', null),
('PM12', N'MOB103', null),
('PM13', N'COM1012', null),
('PM14', N'COM1012', null),
('PM15', N'MOB103', null),
('PM16', N'COM1022', null),
('PM17', N'MOB103', null),
('PM18', N'COM1012', null),
('PM19', N'COM1022', null),
('PM20', N'COM1012', null);

--6.1 Liệt kê tất cả thông tin của các đầu sách gồm tên sách, mã sách, giá tiền , tác giả thuộc loại sách có mã “IT”.
SELECT MaSach, TenSach, GiaTien, TacGia FROM sach WHERE MaLoai = 'IT'

--6.2 Liệt kê các phiếu mượn gồm các thông tin mã phiếu mượn, mã sách , ngày mượn, mã sinh viên có ngày mượn trong tháng 01/2020.
SELECT phieumuon.MaPhieu, chitiet_pm.MaSach, phieumuon.NgayMuon, phieumuon.MaSV  FROM phieumuon INNER JOIN chitiet_pm ON phieumuon.MaPhieu = chitiet_pm.MaPhieu
WHERE NgayMuon LIKE '2020-01%'

--6.3 Liệt kê các phiếu mượn chưa trả sách cho thư viên theo thứ tự tăng dần của ngày mượn sách.
SELECT * FROM phieumuon WHERE GhiChu = N'CHƯA TRẢ' ORDER BY NgayMuon

--6.4 Liệt kê tổng số đầu sách của mỗi loại sách ( gồm mã loại sách, tên loại sách, tổng số lượng sách mỗi loại).
SELECT sach.MaLoai, loaisach.LoaiSach, sach.SoLuong, COUNT(loaisach.MaLoai) AS SoDauSach FROM sach 
INNER JOIN loaisach ON sach.MaLoai = loaisach.MaLoai
GROUP BY sach.MaLoai, loaisach.LoaiSach

--6.5 Đếm xem có bao nhiêu lượt sinh viên đã mượn sách.
SELECT MaSV, COUNT(MaSV) as SoLuotMuon FROM phieumuon GROUP BY MaSV

--6.6 Hiển thị tất cả các quyển sách có tiêu đề chứa từ khoá “CƠ SỞ”
SELECT * FROM sach WHERE TenSach LIKE N'%CƠ SỞ%'

--6.7 Hiển thị thông tin mượn sách gồm các thông tin: mã sinh viên, tên sinh viên, mã phiếu mượn, tiêu đề sách, ngày mượn, ngày trả. Sắp xếp thứ tự theo ngày mượn sách.
SELECT thesinhvien.MaSV, thesinhvien.TenSV, phieumuon.MaPhieu, sach.TenSach, phieumuon.NgayMuon, phieumuon.NgayTra  FROM thesinhvien 
INNER JOIN phieumuon ON thesinhvien.MaSV = phieumuon.MaSV
INNER JOIN chitiet_pm ON chitiet_pm.MaPhieu = phieumuon.MaPhieu
INNER JOIN sach ON chitiet_pm.maSach = sach.MaSach
ORDER BY phieumuon.NgayMuon
--6.8 Liệt kê các đầu sách có lượt mượn lớn hơn 5 lần.
SELECT sach.MaSach, COUNT(chitiet_pm.MaSach) AS LuotMuon FROM sach 
INNER JOIN chitiet_pm ON chitiet_pm.MaSach = sach.MaSach
GROUP BY sach.MaSach
HAVING COUNT(chitiet_pm.MaSach) > 5

--6.9 Viết câu lệnh cập nhật lại giá tiền của các quyển sách có ngày nhập kho trước năm 2014 giảm 30%
UPDATE sach SET GiaTien = GiaTien - GiaTien*0.3
 WHERE YEAR(NgayNhapKho) <= '2014'
 
 --6.10 Viết câu lệnh cập nhật lại trạng thái đã trả sách cho phiếu mượn của sinh viên có mã sinh viên PD12301 (ví dụ).
 UPDATE phieumuon SET GhiChu = N'ĐÃ TRẢ'
 WHERE MaSV = 'PD02740'
 
 --6.11 Lập danh sách các phiếu mượn quá hạn chưa trả gồm các thông tin: mã phiếu mượn,tên sinh viên, email, danh sách các sách đã mượn, ngày mượn.
SELECT phieumuon.MaPhieu, thesinhvien.TenSV, thesinhvien.Email, phieumuon.NgayMuon, phieumuon.NgayTra FROM phieumuon
INNER JOIN thesinhvien ON phieumuon.MaSV = thesinhvien.MaSV
WHERE GhiChu LIKE N'CHƯA TRẢ'

--6.12 Viết câu lệnh cập nhật lại số lượng bản sao tăng lên 5 đơn vị đối với các đầu sách có lượt mượn lớn hơn 5
UPDATE sach SET SoLuong = SoLuong + 5
WHERE MaSach in (SELECT sach.MaSach FROM sach 
INNER JOIN chitiet_pm ON chitiet_pm.MaSach = sach.MaSach
GROUP BY sach.MaSach
HAVING COUNT(chitiet_pm.MaSach) > 5)

--6.13 Viết câu lệnh xoá các phiếu mượn có ngày mượn và ngày trả trước '1/1/2010'
DELETE phieumuon WHERE NgayMuon < '2020-01-01'

