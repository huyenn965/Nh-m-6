--Bảng chi tiết đã đặt
CREATE TABLE CHITIETDADAT (
    SOHOADON INT PRIMARY KEY,          
    MAHANG INT,                       
    GIABAN INT NOT NULL,               
    SOLUONG INT NOT NULL,              
    MUCGIAMGIA DECIMAL(10, 2) CHECK (MUCGIAMGIA >= 0 AND MUCGIAMGIA <= 100),
    FOREIGN KEY (MAHANG) REFERENCES MATHANG(MAHANG) 
);
--Bảng nhà cung cấp
CREATE TABLE NHACUNGCAP (
    MACONGTY INT PRIMARY KEY,          
    TENCONGTY VARCHAR(100) NOT NULL,    
    TENGIAODICH VARCHAR(100) NOT NULL,  
    DIACHI VARCHAR(255) NOT NULL,       
    DIENTHOAI VARCHAR(15) CHECK (DIENTHOAI LIKE '[0-10]+'),
    FAX VARCHAR(20) NULL                
);
