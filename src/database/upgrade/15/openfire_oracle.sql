-- create jiveUserFlag table
CREATE TABLE jiveUserFlag (
  username              VARCHAR2(64)    NOT NULL,
  name                  VARCHAR2(100)   NOT NULL,
  startTime             CHAR(15),
  endTime               CHAR(15),
  CONSTRAINT jiveUserFlag_pk PRIMARY KEY (username, name)
);
CREATE INDEX jiveUserFlag_sTime_idx ON jiveUserFlag (startTime ASC);
CREATE INDEX jiveUserFlag_eTime_idx ON jiveUserFlag (endTime ASC);

UPDATE jiveVersion set version=15 where name = 'openfire';

commit;