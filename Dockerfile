# Node.js 18 이미지 사용
FROM node:18

# 필수 패키지 설치 (Python, make, g++)
RUN apt-get update && apt-get install -y python3 make g++

# 작업 디렉토리 설정
WORKDIR /app

# 프로젝트 파일 복사
COPY . .

# 의존성 설치 (better-sqlite3 포함)
RUN npm install

# 앱 실행
CMD ["npm", "start"]
