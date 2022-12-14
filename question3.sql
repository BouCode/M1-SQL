USE EXAMCINFO2022

---------------Pregunta 3-----------------------

Create Table Libros
(
id_Libro numeric(10,0) Not NULL,
Titulo varchar(30) Not NULL,
PreciodeVenta numeric(10,2) Not NULL,
Paginas int Not NULL
)

------------------------------------------------

--pregunta3.1--

--STORE PROCEDURE--
CREATE PROCEDURE SP_INSERT_BOOK
@IDLIBRO NUMERIC(10,0),
@TITULO VARCHAR(30),
@PRECIOVENTA NUMERIC(10,2),
@PAGINAS INT
AS 
BEGIN 
    INSERT INTO LIBROS VALUES (@IDLIBRO, @TITULO, @PRECIOVENTA, @PAGINAS)
END

EXEC SP_INSERT_BOOK 345, N'Cien años de soledad', 70, 200
EXEC SP_INSERT_BOOK 346, N'Metamorfosis', 50, 100

DELETE FROM LIBROS WHERE ID_LIBRO = 346
SELECT * FROM LIBROS

--pregunta 3.2--

--STORE PROCEDURE--
CREATE PROCEDURE SP_UPDATE_BOOK
@IDLIBRO NUMERIC(10,0),
@TITULO VARCHAR(30),
@PRECIOVENTA NUMERIC(10,2),
@PAGINAS INT
AS 
BEGIN 
    UPDATE LIBROS SET TITULO = @TITULO,
    PRECIODEVENTA = @PRECIOVENTA,
    PAGINAS = @PAGINAS
    WHERE ID_LIBRO = @IDLIBRO
END

EXEC SP_UPDATE_BOOK 345, N'El tunel', 50, 98
EXEC SP_UPDATE_BOOK 346, N'Conversaciones en la catedral', 75, 325

SELECT * FROM LIBROS

--pregunta 3.3--

--STORE PROCEDURE--
CREATE PROCEDURE SP_DELETE_BOOK
@IDLIBRO NUMERIC(10,0)
AS 
BEGIN 
    DELETE FROM LIBROS WHERE ID_LIBRO = @IDLIBRO
END

EXEC SP_DELETE_BOOK 345
SELECT * FROM LIBROS
