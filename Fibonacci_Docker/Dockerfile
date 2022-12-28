FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /Fibonacci_Docker
RUN dotnet new console
COPY Program.cs Program.cs
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /Fibonacci_Docker
COPY --from=build /Fibonacci_Docker/out .
ENTRYPOINT ["dotnet", "Fibonacci_Docker.dll"]