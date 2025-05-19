
# EXAMPLE TAKES ME COPILOTE AI AT MICROSOFT, IT'S WORKING!

> set "charset=ABCDEF0123456789"

> set "length=8"

> set "randomString="

> for /l %%a in (1,1,%length%) do (
>
>     set /a index=!random! %% 16
>
>     for %%b in (!index!) do set "randomString=!randomString!!charset:~%%b,1!"
>
> )
