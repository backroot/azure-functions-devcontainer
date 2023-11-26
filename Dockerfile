# Use the official Azure Functions Python image.
# If you're using a different language, replace "python" with the appropriate tag.
FROM mcr.microsoft.com/azure-functions/python:4-python3.11-core-tools
#FROM --platform=linux/amd64 mcr.microsoft.com/azure-functions/dotnet-isolated:4-dotnet-isolated8.0
#FROM --platform=linux/amd64 node:18-buster-slim

# Set the working directory to /home/site/wwwroot
WORKDIR /app

# Copy the current directory contents into the container at /home/site/wwwroot
COPY . /app

# Install any needed packages specified in requirements.txt
#RUN pip idocker rm $(docker ps -aq)nstall --no-cache-dir -r requirements.txt

# Set the default command to run when the container starts.
# This will start the Azure Functions runtime.
CMD ["func", "start"]
