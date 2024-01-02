# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory to /katalon
WORKDIR /katalon

# Copy the Katalon Studio files into the container
COPY . /katalon
COPY . /katalonc
# Set the environment variable for Katalon Studio
ENV KATALON_OPTS="-browserType="Android" -retry=0"

# Expose the necessary ports
EXPOSE 50000

# Run Katalon Studio tests
# CMD ["./katalonc", "-noSplash", "-runMode=console", "-projectPath=/katalon/source", "-reportFolder=/katalon/report", "-browserType="Android" -retry=0"]
CMD ["./katalonc", "-noSplash", "-runMode=console", "-projectPath=/katalon/source", "-reportFolder=/katalon/report", "-browserType=Android", "-retry=0"]