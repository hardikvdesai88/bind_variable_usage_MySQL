

==========================================
# Bind variables usage for insert query :-
==========================================

create procedure test.bind_var() 
BEGIN


SET @QUR1 =   ' INSERT INTO schemaname.TABLE_NAME VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ' ; 

SET @a := '00002' ;
SET @b := '111112' ;
SET @c := ' 00000001' ;
set @d := '2011-04-15' ;
set @e := null ;
set @f :=  '00000001'; 
set @g := 'Address1' ;
set @h :=  'Address2 '; 
set @i := 'Address3' ;
set @j := 'INDIA' ;
set @k := '12345678'  ;
set @l := '1234567890' ;
SET @m := 'development@google.com' ; 
SET @n := 'NONE' ; 
SET @o := null ; 
SET @p := '12345678' ;
SET @q := 'Individual' ;
SET @r := sysdate() ;
set @s := 'N';
set @t := null ;
set @u := 1 ; 
set @v := 'N' ;
set @w := 0 ;

                     
PREPARE stmt1 FROM @QUR1 ;
                    
EXECUTE stmt1 USING @a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n,@o,@p,@q,@r,@s,@t,@u,@v,@w ;
deallocate PREPARE stmt1 ;
END;
GO

CALL test.bind_var()
GO


