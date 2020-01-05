FROM ruby:2.6.5
LABEL maintainer="pjaneiro@whitesmith.co"

ENV HOME /home/user
ENV CODE /code

# Create user and give it permissions over its home folder and gem folder
RUN useradd --create-home --home-dir $HOME user && \
  chown -R user:user $HOME && \
  chown -R user:user $GEM_HOME

# Install dependencies and base commands
RUN apt-get update -qq && \
  apt-get install -y build-essential libpq-dev vim cron

# Install Node 9
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get update -qq && \
  apt-get install -y nodejs

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && \
  apt-get install yarn

USER user

WORKDIR $CODE

VOLUME $CODE

EXPOSE 3000

CMD ["bundle","exec","rails","server","Puma","-p","3000","-b","0.0.0.0"]
