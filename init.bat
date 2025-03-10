@ECHO OFF

IF NOT EXIST dist (MKDIR dist)
IF NOT EXIST src (MKDIR src)
IF NOT EXIST vendors (MKDIR vendors)
IF NOT EXIST vendors\twbs (MKDIR vendors\twbs)
IF NOT EXIST vendors\twbs\bootstrap (MKDIR vendors\twbs\bootstrap)
IF NOT EXIST vendors\twbs\bootstrap\5.3.2 (MKDIR vendors\twbs\bootstrap\5.3.2)
IF NOT EXIST vendors\twbs\bootstrap\5.3.3 (MKDIR vendors\twbs\bootstrap\5.3.3)
IF NOT EXIST vendors\twbs\bootstrap-icons\ (MKDIR vendors\twbs\bootstrap-icons\)
IF NOT EXIST vendors\twbs\bootstrap-icons\1.11.3 (MKDIR vendors\twbs\bootstrap-icons\1.11.3)

IF NOT EXIST .editorconfig (TYPE NUL > .editorconfig)
IF NOT EXIST .eslintrc (TYPE NUL > .eslintrc)
IF NOT EXIST .gitignore (TYPE NUL > .gitignore)
IF NOT EXIST .prettierignore (TYPE NUL > .prettierignore)
IF NOT EXIST .prettierrc (TYPE NUL > .prettierrc)
IF NOT EXIST .stylelintignore (TYPE NUL > .stylelintignore)
IF NOT EXIST .stylelintrc (TYPE NUL > .stylelintrc)
IF NOT EXIST CHANGELOG.md (TYPE NUL > CHANGELOG.md)
IF NOT EXIST gulpfile.js (TYPE NUL > gulpfile.js)
IF NOT EXIST LICENSE (TYPE NUL > LICENSE)
IF NOT EXIST package.json (TYPE NUL > package.json)
IF NOT EXIST README.md (TYPE NUL > README.md)