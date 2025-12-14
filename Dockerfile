# استخدام صورة Node.js الأساسية
FROM node:24

# تحديد مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المشروع إلى المجلد داخل الحاوية
COPY package*.json ./
RUN npm install

# نسخ بقية الملفات
COPY . .

# تحديد المنفذ الذي سيستمع عليه التطبيق
EXPOSE 3000

# تشغيل التطبيق
CMD ["node", "server.js"]
