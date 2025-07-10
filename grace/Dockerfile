FROM debian

RUN mkdir -p /app/grace

# Copy application files to the /opt directory.
COPY ./print_script.sh /app/grace/print_script.sh

# Assign execute permissions to the scripts.
RUN chmod +x /app/grace/print_script.sh