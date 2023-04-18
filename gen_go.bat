:: 关闭回显
@echo off
:: 防止乱码
chcp 65001

:: --------------- 定义绝对路径 ---------------
set ROOT_DIR=%~dp0
set PROTOC_FILE=%ROOT_DIR%tool\protoc-22.3-win64\bin\protoc.exe
set PLUGIN_FILE=%ROOT_DIR%tool\protoc-gen-go-mt.exe
set PROTO_DIR=%ROOT_DIR%proto\
set OUT_DIR=d:\misstime\mt-admin-go\dto
echo 项目根目录： %ROOT_DIR%
echo protoc文件路径： %PROTOC_FILE%
echo 插件文件路径： %PLUGIN_FILE%
echo proto源文件目录： %PROTO_DIR%
echo 导出路径： %OUT_DIR%

%PROTOC_FILE% --proto_path=%PROTO_DIR% --plugin=protoc-gen-go-mt=%PLUGIN_FILE% --go-mt_out=%OUT_DIR% ^
test_a.proto test_common.proto

echo done!
pause