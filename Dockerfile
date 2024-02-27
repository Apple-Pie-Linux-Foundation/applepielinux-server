# Update Apache and run apt-get update
FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2

# Error and Exception Handling
RUN if [ $? -ne 0 ]; then \
        echo "Error: Failed to update Apache or install apache2"; \
        exit 1; \
    fi

# Check installed packages and utilities
RUN dpkg -l | grep apache2

# Error and Exception Handling
RUN if [ $? -ne 0 ]; then \
        echo "Error: Required packages or utilities are missing"; \
        exit 1; \
    fi
