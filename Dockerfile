# Use the official Ruby image
FROM ruby:3.1.2

# Install node 14-LTS and yarn
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get update -qq && apt-get install -qq --no-install-recommends \
    nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn@1

# Set the working directory
WORKDIR /app

# Install bundler and foreman
RUN gem install bundler foreman

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Create necessary directories and files
RUN mkdir -p log && touch log/production.log

# Set the default port environment variable
ARG DEFAULT_PORT=3000
ENV PORT=${DEFAULT_PORT}

# Expose the port
EXPOSE ${DEFAULT_PORT}

# Command to run the application
CMD ["foreman", "start"]
