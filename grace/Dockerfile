FROM debian

RUN mkdir -p /app/grace

# Fix the source path - script is in same directory as Dockerfile
COPY print_script.sh /app/grace/print_script.sh

# Make it executable
RUN chmod +x /app/grace/print_script.sh