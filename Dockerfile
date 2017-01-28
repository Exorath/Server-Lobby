FROM exorath/serverarchitect

ARG AWS_ACCESS_KEY_ID		
ENV AWS_ACCESS_KEY_ID ${AWS_ACCESS_KEY_ID}		
ARG AWS_SECRET_KEY		
ENV AWS_SECRET_KEY ${AWS_SECRET_KEY}		
ARG AWS_REGION		
ENV AWS_REGION ${AWS_REGION}
ARG EULA

COPY . /usr/src/mcserver
WORKDIR /usr/src/mcserver
RUN serverarchitect
ENTRYPOINT ["startserver", "--eula=${EULA}"]
