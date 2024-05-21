# cava3 容器化部署手册

## 1、模块划分
* 1.1 mysql

* 1.2 redis

* 1.3 CavaSvrProxy

* 1.4 CavaCloudServer/cava_smu

* 1.5 CavaOpenAPI

* 1.6 CavaCloudServer/cava_teu

* 1.7 CavaOpenClient

## 2、部署步骤

* 2.1 制作 image
```
docker-compose -f docker-compose.yml build
```

* 2.2 拉起服务应用
```
docker-compose -f docker-compose.yml up -d
```

* 2.3 重启proxy 和 openapi
```
docker-compose restart proxy
docker-compose restart openapi
```