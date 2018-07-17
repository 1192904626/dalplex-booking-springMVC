

CREATE TABLE IF NOT EXISTS `tb_announcements`(
	`id` INT auto_increment,
	`title` VARCHAR(50),
	`content`  VARCHAR(500),
	`validUntil`  datetime,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create procedure FIND_ANNOUCENMENT_BY_ID(IN ID INT)
  BEGIN
SELECT * FROM zyzhong.tb_announcements WHERE id = ID;
END;

create procedure LIST_ANNOUNCEMENTS_BY_PAGES(IN offset INT, IN rows INT)
BEGIN
  SELECT * FROM zyzhong.tb_announcements ORDER BY validUntil desc limit offset, rows;
END;

create procedure DELETE_ANNOUNCEMENT_BY_ID(IN IDNum INT)
  BEGIN
DELETE FROM zyzhong.tb_announcements WHERE id = IDNum;
END;

create procedure UPDATE_ANNOUNCEMENT(IN id_num int, IN title_input varchar(50), IN content_input varchar(500), IN validUntil_input datetime)
  BEGIN
UPDATE zyzhong.tb_announcements SET title=title_input, content=content_input, validUntil=validUntil_input
WHERE id=id_num;
END;