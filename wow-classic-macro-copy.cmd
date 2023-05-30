::
:: Can you send your macro cache files?  This is a script that copies my 
:: toon macro files from my melee and healer accounts.
::
:: Send the files in the wow_macros directory.  This can back up your macros 
:: to a different location too and share between PCs.
:: 
:: I was lazy and didn't do all my classes in the script.
::
:: Additionally, I don't use the WoW macro interface for editing but an 
:: application called Notepad++.  I use the WoW interface /macro interface
:: for validation.
:: 
:: The :: is the Windows Command Prompt batch file comment.  REM could 
:: also be used. 
::
:: On Windows hit the Windows Start menu button, usually in the lower 
:: right on your PC desktop, just type C M D
::     cmd
:: Open the Command Prompt application
::
:: Change the text SECRET-MELEE-ACCOUNT-NAME and SECRET-HEALS-ACCOUNT to 
:: your account name.  For new players it might be WOW1 or WOW2. 
::
:: Copy and paste the script text below
::
::

        SET server=Whitemane

	SET melee_account_name=SECRET-MELEE-ACCOUNT-NAME
	SET rogue=Septicus
	SET warrior=Bearmaul

	SET heals_account_name=SECRET-HEALS-ACCOUNT
	SET druid=Blackoak
	SET priest=Bulwer

	SET WOW_DRIVE=d:

:: The following probably don't need to be changed

    :: The target directory you want macro files backed up into
	SET TARGET_DIR=%USERPROFILE%\Documents\wow_macros
	mkdir /s/q %TARGET_DIR%

    :: Set the melee account directory source directory
	SET SRC_DIR_ROOT="%WOW_DRIVE%\Program Files (x86)\World of Warcraft\_classic_era_\WTF\Account\%melee_account_name%\%server%"
	
	:: Copy the melee macro cache files to the target directory class name file 
	copy /y %SRC_DIR_ROOT%\%rogue%\macros-cache.txt %TARGET_DIR%\macros-cache_rogue.txt
	copy /y %SRC_DIR_ROOT%\%warrior%\macros-cache.txt %TARGET_DIR%\macros-cache_warrior.txt

	:: Copy the heals macro cache files to the target directory class name file 
	SET SRC_DIR_ROOT="%WOW_DRIVE%\Program Files (x86)\World of Warcraft\_classic_era_\WTF\Account\%heals_account_name%\%server%"
	copy /y %SRC_DIR_ROOT%\%druid%\macros-cache.txt %TARGET_DIR%\macros-cache_druid.txt
	copy /y %SRC_DIR_ROOT%\%priest%\macros-cache.txt %TARGET_DIR%\macros-cache_priest.txt
