FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY . .

# BUSCAR EL PROYECTO AUTOMÁTICAMENTE
RUN find . -name "*.csproj"

# restore usando ruta explícita (la que ya sabemos)
RUN dotnet restore INSTITUTO_C/INSTITUTO_C.csproj

RUN dotnet publish INSTITUTO_C/INSTITUTO_C.csproj -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "INSTITUTO_C.dll"]