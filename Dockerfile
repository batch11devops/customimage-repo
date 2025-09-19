# Use Alpine instead of Ubuntu (lightweight)
FROM alpine:3.19

# Set a label
LABEL maintainer="Raksha shetty"

# Install bash (Alpine has only sh by default)
RUN apk add --no-cache bash

# Set working directory
WORKDIR /app

# Copy a script
COPY app.sh /app/app.sh
RUN chmod +x /app/app.sh

# Run script
CMD ["./app.sh"]

