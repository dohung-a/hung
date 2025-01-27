USE [QLyThueSach]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[sdt] [int] NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNXB]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNXB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tennxb] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblNXB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuanLy]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuanLy](
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSach](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tensach] [nvarchar](50) NULL,
	[manxb] [int] NULL,
	[matl] [int] NULL,
	[trangthai] [tinyint] NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_tblSach] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTheloai]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTheloai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tentheloai] [nvarchar](50) NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_tblTheloai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThue]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[dongia] [int] NULL,
	[soluong] [int] NULL,
	[ngaythue] [date] NULL,
	[ngaytra] [date] NULL,
	[makh] [int] NULL,
	[masach] [int] NULL,
	[datcoc] [int] NULL,
	[dathanhtoan] [int] NULL,
 CONSTRAINT [PK_tblThue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblKhachHang] ON 

INSERT [dbo].[tblKhachHang] ([ID], [tenkh], [diachi], [email], [sdt]) VALUES (7, N'Đỗ Xuân Hùng', N'Hưng Yên', N'abc@gmail.com', 213123)
INSERT [dbo].[tblKhachHang] ([ID], [tenkh], [diachi], [email], [sdt]) VALUES (8, N'Lê Thái Dương', N'Nghệ An', N'duong@gmail.com', 332993322)
INSERT [dbo].[tblKhachHang] ([ID], [tenkh], [diachi], [email], [sdt]) VALUES (9, N'Vương Thị Quỳnh', N'Bắc Giang', N'quynh@gmail.com', 31231222)
INSERT [dbo].[tblKhachHang] ([ID], [tenkh], [diachi], [email], [sdt]) VALUES (10, N'Tran Hoang Son', N'dasdsad', N'son@gmail.com', 321312312)
SET IDENTITY_INSERT [dbo].[tblKhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNXB] ON 

INSERT [dbo].[tblNXB] ([ID], [tennxb]) VALUES (1, N'Kim đồng')
INSERT [dbo].[tblNXB] ([ID], [tennxb]) VALUES (2, N'Trẻ')
INSERT [dbo].[tblNXB] ([ID], [tennxb]) VALUES (3, N'Tư pháp')
SET IDENTITY_INSERT [dbo].[tblNXB] OFF
GO
SET IDENTITY_INSERT [dbo].[tblQuanLy] ON 

INSERT [dbo].[tblQuanLy] ([TaiKhoan], [MatKhau], [ID], [email]) VALUES (N'admin', N'admin', 1, N'dohung0708@gmail.com')
SET IDENTITY_INSERT [dbo].[tblQuanLy] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSach] ON 

INSERT [dbo].[tblSach] ([ID], [tensach], [manxb], [matl], [trangthai], [soluong]) VALUES (1, N'Người đẹp và quái vật', 1, 24, 1, 5)
INSERT [dbo].[tblSach] ([ID], [tensach], [manxb], [matl], [trangthai], [soluong]) VALUES (2, N'Đắc nhân tâm', 2, 1, 1, 10)
INSERT [dbo].[tblSach] ([ID], [tensach], [manxb], [matl], [trangthai], [soluong]) VALUES (3, N'abc', 3, 1, 1, 10)
INSERT [dbo].[tblSach] ([ID], [tensach], [manxb], [matl], [trangthai], [soluong]) VALUES (1012, N'ma 2 dau', 1, 1, 1, 4)
INSERT [dbo].[tblSach] ([ID], [tensach], [manxb], [matl], [trangthai], [soluong]) VALUES (1013, N'abc', 1, 27, 1, 3)
INSERT [dbo].[tblSach] ([ID], [tensach], [manxb], [matl], [trangthai], [soluong]) VALUES (1014, N'lý tiểu long', 2, 27, 1, 1000)
SET IDENTITY_INSERT [dbo].[tblSach] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTheloai] ON 

INSERT [dbo].[tblTheloai] ([ID], [tentheloai], [dongia]) VALUES (1, N'Sách tâm lý', 20000)
INSERT [dbo].[tblTheloai] ([ID], [tentheloai], [dongia]) VALUES (24, N'Sách tình yêu', 50000)
INSERT [dbo].[tblTheloai] ([ID], [tentheloai], [dongia]) VALUES (25, N'Sách khoa hoc', 50000)
INSERT [dbo].[tblTheloai] ([ID], [tentheloai], [dongia]) VALUES (27, N'Sách võ thuat', 30000)
INSERT [dbo].[tblTheloai] ([ID], [tentheloai], [dongia]) VALUES (30, N'Sách kinh dị', 70000)
SET IDENTITY_INSERT [dbo].[tblTheloai] OFF
GO
SET IDENTITY_INSERT [dbo].[tblThue] ON 

INSERT [dbo].[tblThue] ([ID], [dongia], [soluong], [ngaythue], [ngaytra], [makh], [masach], [datcoc], [dathanhtoan]) VALUES (1059, 50000, 5, CAST(N'2024-05-23' AS Date), CAST(N'2024-05-24' AS Date), 7, 1, 20000, NULL)
INSERT [dbo].[tblThue] ([ID], [dongia], [soluong], [ngaythue], [ngaytra], [makh], [masach], [datcoc], [dathanhtoan]) VALUES (1060, 20000, 6, CAST(N'2024-05-22' AS Date), CAST(N'2024-05-23' AS Date), 9, 1012, 50000, 70000)
SET IDENTITY_INSERT [dbo].[tblThue] OFF
GO
ALTER TABLE [dbo].[tblSach]  WITH CHECK ADD  CONSTRAINT [FK_tblSach_tblNXB] FOREIGN KEY([manxb])
REFERENCES [dbo].[tblNXB] ([ID])
GO
ALTER TABLE [dbo].[tblSach] CHECK CONSTRAINT [FK_tblSach_tblNXB]
GO
ALTER TABLE [dbo].[tblSach]  WITH CHECK ADD  CONSTRAINT [FK_tblSach_tblTheloai] FOREIGN KEY([matl])
REFERENCES [dbo].[tblTheloai] ([ID])
GO
ALTER TABLE [dbo].[tblSach] CHECK CONSTRAINT [FK_tblSach_tblTheloai]
GO
ALTER TABLE [dbo].[tblThue]  WITH CHECK ADD  CONSTRAINT [FK_tblThue_tblKhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[tblKhachHang] ([ID])
GO
ALTER TABLE [dbo].[tblThue] CHECK CONSTRAINT [FK_tblThue_tblKhachHang]
GO
ALTER TABLE [dbo].[tblThue]  WITH CHECK ADD  CONSTRAINT [FK_tblThue_tblSach] FOREIGN KEY([masach])
REFERENCES [dbo].[tblSach] ([ID])
GO
ALTER TABLE [dbo].[tblThue] CHECK CONSTRAINT [FK_tblThue_tblSach]
GO
/****** Object:  StoredProcedure [dbo].[chonsach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[chonsach]
@idsach int 
as
begin
select * from tblSach where ID = @idsach
end
GO
/****** Object:  StoredProcedure [dbo].[HienThiDoanhThuTheoNgay]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HienThiDoanhThuTheoNgay]
    @ngay DATE
AS
BEGIN
    SELECT 
        s.tensach AS TenSach,
        kh.tenkh AS TenKhachHang,
        th.soluong * th.dongia AS DoanhThu,
		th.soluong as SoLuong,
        th.ngaythue AS NgayThue,
		th.ngaytra as NgayTra
    FROM 
        tblThue th
        INNER JOIN tblSach s ON th.masach = s.ID
        INNER JOIN tblKhachHang kh ON th.makh = kh.ID
    WHERE 
        CONVERT(date, th.ngaytra) = @ngay;
END
GO
/****** Object:  StoredProcedure [dbo].[LoadDanhSachThueSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoadDanhSachThueSach]
AS
BEGIN
    SELECT 
        T.ID ,
        TL.tentheloai ,
        S.tensach ,
        K.tenkh ,
		K.sdt,
		K.email,
		K.diachi,
		T.dongia*T.soluong as dongia,
        T.soluong ,
        T.ngaythue ,
		T.ngaytra,
		((T.dongia*T.soluong) -T.datcoc - T.dathanhtoan) AS conlai,
        T.datcoc 
    FROM 
        tblThue T
    INNER JOIN 
        tblSach S ON T.masach = S.ID
    INNER JOIN 
        tblTheLoai TL ON S.matl = TL.ID
    INNER JOIN 
        tblKhachHang K ON T.makh = K.ID

	if @@ROWCOUNT > 0 return 1
	else return 0
END
GO
/****** Object:  StoredProcedure [dbo].[loadDsHD]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[loadDsHD]
	@id bigint
as
begin

select 
		kh.tenkh,
		t.datcoc,
		t.dongia*t.soluong as dongia
from tblThue t 
	inner join tblKhachHang kh on t.makh = kh.ID
	where t.ID = @id
end
GO
/****** Object:  StoredProcedure [dbo].[loadDsKH]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[loadDsKH]
as
begin 
		select * from tblKhachHang
end
GO
/****** Object:  StoredProcedure [dbo].[loadDsloaisach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[loadDsloaisach]
as
begin 
		select * from tblTheloai
end
GO
/****** Object:  StoredProcedure [dbo].[loaddsnxb]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[loaddsnxb]
as
begin
select * from tblNXB 
end
GO
/****** Object:  StoredProcedure [dbo].[loadDsSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[loadDsSach]
as
begin
	select 
	s.ID,
	ls.tentheloai,
	s.tensach,
	n.tennxb,
	ls.dongia,
	s.soluong,
	case
		when s.trangthai = 0 then N'Đã hết'
		else N'Còn'
		end as trangthai
	from tblSach s
		inner join tblTheloai ls on s.matl = ls.ID
		inner join tblNXB n on s.manxb = n.ID
end
GO
/****** Object:  StoredProcedure [dbo].[loadDsSachkh]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[loadDsSachkh]
as
begin 
		select 
			s.ID,
			CONCAT (tl.tentheloai ,'-', s.tensach ,'-' , s.soluong) as tensach		
		from tblSach s
		inner join tblTheloai tl on s.matl = tl.ID
		where s.trangthai = 1

end
GO
/****** Object:  StoredProcedure [dbo].[SelectUserCount]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SelectUserCount]
    @username NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @count INT;

    SELECT @count = COUNT(1) 
    FROM tblQuanLy 
    WHERE TaiKhoan = @username AND MatKhau = @password;

    SELECT @count AS UserCount;
END
GO
/****** Object:  StoredProcedure [dbo].[suasach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[suasach]
	@id int,
	@tenloaisach nvarchar(50),
	@dongia int
as
begin
	update tblTheloai
	set tentheloai = @tenloaisach,
		dongia = @dongia
	where 
	ID = @id;
	if @@ROWCOUNT > 0 return 1
	else
	return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[ThanhToanTraSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThanhToanTraSach]
    @id INT,
    @tien INT
AS
BEGIN
    
    DECLARE @conlai INT;

    
    SELECT @conlai = dongia - datcoc - @tien
    FROM tblThue
    WHERE ID = @id;

   
    UPDATE tblThue
    SET dathanhtoan = @tien
    WHERE ID = @id;

    
    

    
    IF @@ROWCOUNT > 0
        RETURN 1;
    ELSE
        RETURN 0;
END
GO
/****** Object:  StoredProcedure [dbo].[theloaisach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[theloaisach]

       @tenloaisach varchar(50),
       @dongia int
AS
BEGIN

       SET NOCOUNT ON;

       INSERT INTO tblTheloai
              (tentheloai,dongia)
       VALUES
              (@tenloaisach, @dongia)
		if @@ROWCOUNT > 0 return 1
		else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[themkh]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[themkh]
       @tenkh nvarchar(50),
       @diachi nvarchar(50),
	   @email varchar(50),
	   @sdt int
AS
BEGIN
       INSERT INTO tblKhachHang
              (tenkh,diachi,email,sdt)
       VALUES
              (@tenkh, @diachi,@email,@sdt)
		if @@ROWCOUNT > 0 return 1
		else
		return 0;
END
GO
/****** Object:  StoredProcedure [dbo].[themkhachthue]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[themkhachthue]
       @masach INT,
       @makh INT,
       @datcoc INT,
       @soluong INT,
       @ngaythue DATE,
       @ngaytra DATE
AS
BEGIN
	
	DECLARE @book_status TINYINT;
	DECLARE @so_luong INT;

	
	SELECT @book_status = trangthai,
			@so_luong = soluong
	FROM tblSach
	WHERE ID = @masach;

	
	IF @book_status = 1 and @so_luong >= @soluong 
	BEGIN
		
		INSERT INTO tblThue (masach, makh, dongia, datcoc, soluong, ngaythue, ngaytra)
		VALUES (
			@masach,
			@makh,
			(SELECT l.dongia FROM tblSach s INNER JOIN tblTheloai l ON s.matl = l.ID WHERE s.ID = @masach),
			@datcoc,
			@soluong,
			convert (varchar(10),@ngaythue, 111),
			convert (varchar(10),@ngaytra, 111)
		);

		 UPDATE tblSach
        SET soluong = soluong - @soluong
        WHERE ID = @masach;
		
		IF @@ROWCOUNT > 0
		BEGIN
			IF (SELECT soluong FROM tblSach WHERE ID = @masach) = 0
			BEGIN

				UPDATE tblSach
				SET trangthai = 0
				WHERE ID = @masach; 
			end
			return 1;
		END
		ELSE
		BEGIN
			RETURN 0; 
		END
	END
	ELSE
	BEGIN
		RETURN 0; 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[themsach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[themsach]
	@matl int,
	@tensach nvarchar(50),
	@trangthai tinyint,
	@manxb int,
	@soluong int
as
begin
	insert into tblSach(matl,tensach,trangthai,soluong,manxb)
	values (@matl,@tensach,@trangthai,@soluong,@manxb)
	IF @@ROWCOUNT >0 return 1
	else return 0
end
GO
/****** Object:  StoredProcedure [dbo].[ThueSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThueSach]
    @masach INT,
    @makh INT,
    @soluong INT,
    @ngaythue DATE,
    @datcoc INT
AS
BEGIN
    DECLARE @book_status TINYINT;
    
    -- Kiểm tra trạng thái của sách
    SELECT @book_status = trangthai
    FROM tblSach
    WHERE ID = @masach;

    -- Kiểm tra xem sách có sẵn để thuê không
    IF @book_status = 0 -- Trạng thái sách là chưa được thuê
    BEGIN
        -- Thêm thông tin thuê sách vào bảng tblThue
        INSERT INTO tblThue (dongia, soluong, ngaythue, makh, masach, datcoc)
        VALUES (
            (SELECT dongia FROM tblTheLoai WHERE ID = (SELECT matl FROM tblSach WHERE ID = @masach)),
            @soluong,
            @ngaythue,
            @makh,
            @masach,
            @datcoc
        );

        -- Cập nhật trạng thái của sách thành đã được thuê
        UPDATE tblSach
        SET trangthai = 1 -- Trạng thái đã được thuê
        WHERE ID = @masach;
       if @@ROWCOUNT > 0 return 1
	   else return 0
	   end
END
GO
/****** Object:  StoredProcedure [dbo].[tiemkiemtheotenkh]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tiemkiemtheotenkh]
	@tenkh nvarchar(50)
as
begin
		select
		T.ID ,
        TL.tentheloai ,
        S.tensach ,
        K.tenkh ,
		K.sdt,
		K.email,
		K.diachi,
		T.dongia*T.soluong as dongia,
        T.soluong ,
        T.ngaythue ,
		T.ngaytra,
		((T.dongia*T.soluong) -T.datcoc - T.dathanhtoan) AS conlai,
        T.datcoc 
    FROM 
        tblThue T
    INNER JOIN 
        tblSach S ON T.masach = S.ID
    INNER JOIN 
        tblTheLoai TL ON S.matl = TL.ID
    INNER JOIN 
        tblKhachHang K ON T.makh = K.ID
		WHERE k.tenkh LIKE '%' + @tenkh + '%';
end
GO
/****** Object:  StoredProcedure [dbo].[TimKiemTheoTenSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimKiemTheoTenSach]
    @TenSach NVARCHAR(50)
AS
BEGIN
    SELECT 
	s.ID,
	ls.tentheloai,
	s.tensach,
	n.tennxb,
	ls.dongia,
	s.soluong,
	case
		when s.trangthai = 0 then N'Đã hết'
		else N'Còn'
		end as trangthai
    FROM tblSach s
		inner join tblTheloai ls on s.matl = ls.ID
		inner join tblNXB n on s.manxb = n.ID
    WHERE tensach LIKE '%' + @TenSach + '%';
END
GO
/****** Object:  StoredProcedure [dbo].[trasach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[trasach]
    @id INT,
    @tien INT
AS
BEGIN
    DECLARE @dongia INT;
    DECLARE @datcoc INT;
    SELECT @dongia = dongia, @datcoc = datcoc
    FROM tblThue
    WHERE ID = @id;
    DECLARE @sotienconlai INT;
    SET @sotienconlai = @dongia - @datcoc - @tien;

    IF @sotienconlai = 0
    BEGIN
        UPDATE tblThue
        SET dathanhtoan = @tien,
            ngaytra = GETDATE()
        WHERE ID = @id;

        UPDATE tblSach
        SET trangthai = 1
        WHERE ID IN (
            SELECT masach
            FROM tblThue
            WHERE ID = @id
        );

        RETURN 1; 
    END
    ELSE
    BEGIN
        
        UPDATE tblThue
        SET dathanhtoan = @tien
        WHERE ID = @id;

        RETURN 0; 
    END
END
GO
/****** Object:  StoredProcedure [dbo].[TraSachThue]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TraSachThue]
    @id INT
AS
BEGIN
    
    DECLARE @masach INT;
    SELECT @masach = masach FROM tblThue WHERE ID = @id;

    
    DECLARE @soluong INT;
    SELECT @soluong = soluong FROM tblThue WHERE ID = @id;

    
    DELETE FROM tblThue WHERE ID = @id;

    
    DECLARE @soluong_conlai INT;
    SELECT @soluong_conlai = soluong FROM tblSach WHERE ID = @masach;

    IF @soluong_conlai = 0
    BEGIN
        
        UPDATE tblSach
        SET trangthai = 1
        WHERE ID = @masach;

		UPDATE tblSach
        SET soluong = soluong + @soluong
        WHERE ID = @masach;
    END

    
    IF @soluong_conlai > 0
    BEGIN
        UPDATE tblSach
        SET soluong = soluong + @soluong
        WHERE ID = @masach;
    END

    
    IF @@ROWCOUNT > 0
        RETURN 1;
    ELSE
        RETURN 0;
END
GO
/****** Object:  StoredProcedure [dbo].[updatesach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatesach]
	@idsach int,
	@tensach nvarchar(50),
	@matl int,
	@manxb int,
	@trangthai tinyint,
	@soluong int
as
begin
	update tblSach
	set tensach = @tensach,
		matl = @matl,
		manxb = @manxb,
		trangthai = @trangthai,
		soluong = @soluong
	where 
	ID = @idsach;
	if @@ROWCOUNT > 0 return 1
	else
	return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[xoasach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[xoasach]
    @idsach INT
AS
BEGIN
    DELETE FROM tblSach WHERE ID = @idsach;
	if @@ROWCOUNT > 0 return 1
	else
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[XoaTheLoaiSach]    Script Date: 10/23/2024 9:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaTheLoaiSach]
    @id INT
AS
BEGIN
    DELETE FROM tblTheloai WHERE ID = @id;
	if @@ROWCOUNT > 0 return 1
	else
	return 0
END
GO
