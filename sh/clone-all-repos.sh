#!/bin/bash
# will change to nodejs after.
if [ ! -f projects ];
then mkdir /home/kamilic-site/projects;
fi

cd /home/kamilic-site/projects;

# git clone git@github.com:kamilic/kamilic-me.git kamilic-me;
git clone git@github.com:kamilic/my-hexo-blog-source.git kamilic-me-darkroom;

