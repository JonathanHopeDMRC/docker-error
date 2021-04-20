FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY subdir ./subdir

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash
RUN apt-get update && apt-get install -y nodejs

WORKDIR /src/subdir
RUN npm install
RUN npm run build