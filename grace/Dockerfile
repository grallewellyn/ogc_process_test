FROM debian

RUN mkdir -p /app/grace

# Fix the source path - script is in same directory as Dockerfile
COPY ./grace/print_script.sh /app/grace

# Make it executable
RUN chmod +x /app/grace/print_script.sh