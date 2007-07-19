@ECHO OFF
REM $Id: pearenv.bat 18 2007-07-16 09:31:28Z iteman $

chdir ..
FOR /f "usebackq" %%p IN (`chdir`) DO SET TARGET_PATH=%%p

@CALL pear.bat config-set bin_dir %TARGET_PATH%\scripts
@CALL pear.bat config-set doc_dir %TARGET_PATH%\imports\pear\docs
@CALL pear.bat config-set ext_dir %TARGET_PATH%\imports\pear\lib\php5
@CALL pear.bat config-set php_dir %TARGET_PATH%\imports\pear
@CALL pear.bat config-set cache_dir %TMP%\pear\cache
@CALL pear.bat config-set data_dir %TARGET_PATH%\imports\pear\data
@CALL pear.bat config-set test_dir %TARGET_PATH%\imports\pear\tests

@CALL pear.bat list -a

@ECHO OFF
PAUSE

REM Local Variables:
REM mode: bat-generic
REM coding: iso-8859-1
REM indent-tabs-mode: nil
REM End:
