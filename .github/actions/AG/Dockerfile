# Adapted from GitHub Actions MWE for Docker containers
# https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action

# Container image that runs your code
FROM dalexhughes/w241

# Copies your code file from your action repository to the filesystem path `/` of the container

# Imitating the structure of student-level-folders-within-the-repo
# RUN mkdir /tslade

# Imitating that a student's answers are in the 'questions' folder
# COPY ps2-answers /tslade/questions
# Staging the testing suite, which the shell file later moves
COPY test_ps2_answers.R /test_ps2_answers.R

# Executing Alex's shell script
COPY ./AG-docker-up.sh /AG-docker-up.sh
RUN chmod +x /AG-docker-up.sh
RUN sudo apt-get install tree

RUN ls -lah

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/AG-docker-up.sh"]