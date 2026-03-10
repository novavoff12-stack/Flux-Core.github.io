FROM node:20

RUN mkdir -p /usr/src/app

COPY . /usr/src/app
WORKDIR /usr/src/app

# Installer med legacy-peer-deps (viktig!)
RUN npm install --legacy-peer-deps

# Generer Prisma-klienten
RUN npm run prisma:generate

EXPOSE 3000

CMD ["npm", "run", "start"]
