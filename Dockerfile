FROM directus/directus:latest
RUN apk add sqlite
ENV CORS_ENABLED=true
ENV CORS_ORIGIN=true
ENV DATABASE_DRIVER=sqlite
ENV DATABASE_NAME=/directus/database/directus.sqlite
ENV KEY=zzfO9h8VwdTgaq0ABEZmSFPRp0Catekaz7hSaQ7GtMPrvYFl10
ENV SECRET=1nt4uR8CviIBTWFULeG6couRmepKewVPT8UMHDAy2AzmFjUkX6
ENV ADMIN_EMAIL=moseskamau338@gmail.com
ENV ADMIN_PASSWORD=password

# Copy the host directories into the image
COPY ./database /directus/database
COPY ./uploads /directus/uploads
COPY ./extensions /directus/extensions
