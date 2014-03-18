FROM templateria/tsuru-base
#RUN ln -s /var/lib/tsuru/base/start /var/lib/tsuru/start
#RUN ln -s /var/lib/tsuru/base/restart /var/lib/tsuru/restart
ADD configs /var/lib/tsuru/configs
ADD create_fpm_envs.py /var/lib/tsuru/create_fpm_envs.py
ADD php5-fpm        /var/lib/tsuru/php5-fpm
ADD scripts/setup   /var/lib/tsuru/setup
ADD scripts/deploy  /var/lib/tsuru/deploy
ADD scripts/install /var/lib/tsuru/install
ADD scripts/start   /var/lib/tsuru/start
ADD scripts/restart   /var/lib/tsuru/restart
RUN /var/lib/tsuru/install
RUN /var/lib/tsuru/setup
