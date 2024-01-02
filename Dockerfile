# Use an official OpenJDK runtime as a parent image
FROM katalonstudio/katalon:latest

# Set the working directory to /katalon
WORKDIR /katalon

# Copy the Katalon Studio files into the container
COPY . .

# Set the environment variable for Katalon Studio
ENV KATALON_OPTS="-browserType=Android -retry=0"

# Expose the necessary ports (if needed)
EXPOSE 8081

# Run Katalon Studio tests
CMD ["./katalonc", "-noSplash", "-runMode=console", "-projectPath=/katalon/source", "-reportFolder=/katalon/report", "-browserType=Android", "-retry=0"]
