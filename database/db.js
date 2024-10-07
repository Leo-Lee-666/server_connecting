const Database = require('better-sqlite3');
const path = require('path');

const dbPath = path.resolve(__dirname, 'database.sqlite');
const db = new Database(dbPath);  // 동기식으로 데이터베이스 연결

console.log('Connected to SQLite database');

module.exports = db;
