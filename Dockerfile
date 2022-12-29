FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /Fibonacci_Docker

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /Fibonacci_Docker
COPY --from=build-env /Fibonacci_Docker/out .
ENTRYPOINT ["dotnet", "Fibonacci_Docker.dll"]