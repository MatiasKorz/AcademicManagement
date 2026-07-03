FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

COPY . .

RUN dotnet restore INSTITUTO_C/INSTITUTO_C.csproj
RUN dotnet publish INSTITUTO_C/INSTITUTO_C.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=build /app/out .

EXPOSE 8080

ENTRYPOINT ["dotnet", "INSTITUTO_C.dll"]