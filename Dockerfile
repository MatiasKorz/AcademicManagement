FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# copiar todo el repo
COPY . .

# ir directo al folder correcto
WORKDIR /src/INSTITUTO_C

# restore y publish desde adentro (SIN rutas raras)
RUN dotnet restore
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "INSTITUTO_C.dll"]