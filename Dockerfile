# Dockerfile.rails
FROM ruby:3.0.2 AS rails-toolbox

# Default directory
ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

# Install rails
RUN gem install bundler

WORKDIR /opt/app

COPY . .

RUN bundle

EXPOSE 3000

CMD ["bin/rails", "s", "-b", "0.0.0.0"]