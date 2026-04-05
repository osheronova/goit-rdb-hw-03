USE hw02;

-- 1a. Вибрати всі стовпчики з таблиці products
SELECT * FROM products;

-- 1b. Вибрати тільки стовпчики name, phone з таблиці shippers
SELECT name, phone FROM shippers;

-- 2. Середнє, максимальне та мінімальне значення price
SELECT 
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products;

-- 3. Унікальні значення category_id та price, сортування за спаданням price, 10 рядків
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- 4. Кількість продуктів з ціною від 20 до 100
SELECT COUNT(*) AS product_count
FROM products
WHERE price BETWEEN 20 AND 100;

-- 5. Кількість продуктів та середня ціна у кожного постачальника
SELECT 
    supplier_id,
    COUNT(*) AS product_count,
    AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;
