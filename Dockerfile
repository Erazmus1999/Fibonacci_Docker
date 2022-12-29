FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /Fibonacci_Docker
COPY Fibonacci_Docker/bin/Release/net6.0/publish .
ENTRYPOINT ["dotnet","Fibonacci_Docker.dll"]