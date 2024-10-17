# project setup documentation

```
mkdir folder
cd folder 
npm init | -y
touch .gitignore .dockerignore Dockerfile README.md docker-compos.yml nodemon.json
```

# Typescript and prisma setup
``` bash
npm i typescript --save-dev
npx tsc --init
npm i @types/node --save-dev
npm i express
npm i @types/express --save-dev
npm i prisma @prisma/client
npx prisma init
```

## Dependencies setup

```bash
npm i morgan cors cookie-parser multer
npm i --save-dev @types/cookie-parser
npm i --save-dev @types/cors
npm i --save-dev @types/morgan
npm i --save-dev @types/multer
```