@echo off
setlocal enabledelayedexpansion
set topic[0]=comments
set topic[1]=variables
set topic[2]=values
set topic[3]=Arrays
set topic[4]=decision-making
set topic[5]=operators

for /l %%n in (0,1,5) do (
echo !topic[%%n]!
)

set obj[0].Name=Joe
set obj[0].ID=1
set obj[1].Name=Mark
set obj[1].ID=2
set obj[2].Name=Mohan
set obj[2].ID=3
FOR /L %%i IN (0 1 2) DO  (
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
)
exit 1