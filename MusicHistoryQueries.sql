
--Ex 1
--SELECT * FROM ALBUM;
--SELECT * FROM GENRE;
--SELECT * FROM ARTIST;
--SELECT * FROM Song;

--Ex 2
--SELECT * FROM ARTIST ORDER By ArtistName

--EX 3
--SELECT s.Title, a.ArtistName From Song s LEFT Join Artist a ON s.ArtistId = a.id

--Ex 4
--SELECT a.ArtistNAme FROM Artist a  Join Album al on a.id  = al.artistId Join Genre on genre.Id =  al.GenreId WHERE Genre.name ='Pop';

--Ex 5
--SELECT a.ArtistNAme FROM Artist a  Join Album al on a.id  = al.artistId Join Genre on genre.Id =  al.GenreId WHERE Genre.name ='Rock' OR Genre.name ='Jazz';

--Ex 6  Not working correct
--SELECT al.Title From Album al Left Join Song s on s.albumId = al.id WHERE s.id IS null;


--Ex 7
--INSERT INTO Artist (ArtistName, YearEstablished) Values ('Phish', 1983);

--EX 8
--INSERT INTO ALBUM (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Lawn Boy', '9/21/1990', 2865, 'Absolute A Go Go', 28, 2 );
--SELECT * FROM ALBUM;

--EX 9
/*INSERT INTO SONG 
(
  Title,
  SongLength,
  ReleaseDate,
  GenreId,
  ArtistId,
  AlbumId) VALUES 
  (
  'Split Open and Melt',
  282,
  '9/21/1990',
  2,28,24
  );
  Select * From Song */

--EX 10
--SELECT a.artistName Artist, al.Title Album, s.Title Song From Album al Join Song s On al.ID = s.AlbumId Join Artist a on a.Id = al.ArtistId Where a.ArtistName = 'Phish'; 

--EX11
--Select Count(s.ID) NumofSongs, al.Title  From album al Join song s on al.Id = s.AlbumId group by al.title;

--EX 12
--Select Count(s.ID) NumofSongs, a.ArtistName artist From artist a Join song s on a.Id = s.ArtistId group by a.ArtistName;

--EX 13
--Select Count(s.ID) NumofSongs, g.Name genre  From genre g Join song s on g.Id = s.genreId group by g.name;

--EX 14 NOt Working yet!!!!!!!
--SELECT a.ArtistName Artist FROM artist a Join Album al on al.ArtistId = a.id Group by al.Label having count(al.Label) > 1

--EX 15 
--Select al.Title Album, al.albumlength Duration From Album al WHERE al.albumlength = (Select Max(al.albumlength) From Album al);  

--Ex 16
--Select s.Title Song, s.songlength Duration From Song s WHERE s.songlength = (Select Max(SongLength) From Song);

--EX 17
Select s.Title Song, s.songlength Duration, al.Title Album From Song s Join album al on s.AlbumId =al.Id WHERE s.songlength = (Select Max(SongLength) From Song);







