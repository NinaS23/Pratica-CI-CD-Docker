FROM node

# diretório criado no container
WORKDIR /usr/src/

# copia todos os arquivos para o container
COPY . . 

# expõe na porta 5000 
EXPOSE 5000

# roda os comandos para a criação 
RUN npm i && npm run build && npx prisma generate

#só executa quando rodarmos a imagem
CMD ["npm", "run", "dev"]