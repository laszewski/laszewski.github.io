# Using a stable Debian-based Ruby image (Natively compatible with NVIDIA Spark nodes)
FROM ruby:3.2-bookworm

# Install build dependencies
# We include 'libvips' or 'imagemagick' in case you use jekyll-assets later
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /srv/jekyll

# Copy Gemfile first to leverage Docker cache
COPY Gemfile* ./

# Install Jekyll and the Scholar gem
RUN gem install bundler && bundle install

# Copy the site source
COPY . .

# Expose the default Jekyll port
EXPOSE 4000

# Use bundle exec to ensure we use the exact gem versions defined
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]