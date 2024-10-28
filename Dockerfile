FROM dart:stable

WORKDIR /app

COPY pubspec.* ./

RUN dart pub get

COPY . .

CMD ["dart", "run", "./bin/alura_quest.dart"]
