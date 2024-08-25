# 启动服务

- 基础服务
    - cd ${ragflow_baseDir}/docker && docker compose -f docker-compose-base.yml up -d
- 后端
    - cd ${ragflow_baseDir} && bash ./entrypoint.sh
- 前端
    - cd ${ragflow_baseDir}/web && npm run dev
- 访问地址：
    - 用户页面：http://localhost:9222
