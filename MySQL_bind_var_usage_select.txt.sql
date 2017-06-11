

==========================================
# Bind variables usage for select query :-
==========================================

create procedure test.bind_var_sel (IN scd varchar(10),IN dt datetime)  
BEGIN 

  SET @qur :=  ' SELECT COL1 
                FROM SCHEMANAME.TABLE_NAME 
                WHERE SCODE= ?  AND DATE<= ? 
               order by DATE desc ' ;

SET @var1 := scd;
SET @var2 := dt ;

PREPARE stmt1 FROM @qur ;
                    
EXECUTE stmt1 USING @var1,@var2;
deallocate PREPARE stmt1 ;
END;
GO


call test.bind_var_sel ('I0013' ,'2013-05-31')
go

