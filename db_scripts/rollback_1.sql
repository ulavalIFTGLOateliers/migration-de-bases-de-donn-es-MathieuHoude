DROP TABLE IF EXISTS band;

ALTER TABLE musician RENAME singer,
DROP COLUMN role, 
DROP COLUMN bandName;

ALTER TABLE singer RENAME COLUMN musicianName TO singerName;

ALTER TABLE album
DROP FOREIGN KEY FK_A_musicianName,
ADD CONSTRAINT FK_A_singerName
FOREIGN KEY (singerName)
REFERENCES singer(singerName);