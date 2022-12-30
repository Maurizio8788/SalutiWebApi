FROM mcr.microsoft.com/dotnet/aspnet AS base
EXPOSE 5051
COPY /bin/Release/net5.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "SalutiWebApi.dll"]

# dotnet publish -c Release
# docker build -t saluti -f Dockerfile .
# docker tag saluti saluti.azurecr.io/saluti
# docker push saluti.azurecr.io/saluti

# docker run --restart unless-stopped --log-opt max-size=10m -p 5051:5051 saluti
