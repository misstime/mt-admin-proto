# mt-admin-proto

generate typescript
--------------------

1. 使用 npm 安装编译插件 [stephenh/ts-proto](https://github.com/stephenh/ts-proto)

```shell
npm install ts-proto
```

2. 编译

执行 gen_ts.bat

```shell
./tool/prot
```
.\tool\protoc-22.3-win64\bin\protoc.exe --plugin=protoc-gen-ts_proto=.\node_modules\.bin\protoc-gen-ts_proto.cmd --ts_proto_out=. ./proto/test_common.proto