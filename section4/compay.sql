-- NULLの値を抽出する --
SELECT * FROM employees WHERE age IS NULL;

-- NULLの値を抽出する --
SELECT * FROM employees WHERE age IS NOT NULL;

-- 文字列のパターンに一致するLIKE --
-- naが含まれる従業員を返す
SELECT * FROM employees WHERE name LIKE '%na%'

-- 前方一致 --
SELECT * FROM employees WHERE name LIKE 'na%'

-- 後方一致 --
SELECT * FROM employees WHERE name LIKE '%na'
-- _(アンダースコア)は、単一の文字に一致させる --
-- ２文字目がaの文字を返す --
SELECT * FROM employees WHERE name LIKE '_a'

-- 範囲検索 --
-- 給与が３０００以上４０００以下の従業員を検索 --
SELECT name, salary FROM employees WHERE salary BETWEEN 3000 AND 4000;

-- BETWEEN --
-- ２０２０年１月１日から２０２１年１２月３１日までの期間に該当する作業員を検索 --
SELECT * FROM employees WHERE hire_date BETWEEN '2020-01-01' AND '2021-12-31';

-- IN句 --
-- 複数の値の中から一致する値を検索するために使用します --
-- ポジションが'Manager'または'Developer'の従業員を検索 --
SELECT * FROM employees WHERE position IN ('Manager', 'Developer');

-- 演習問題 --
-- 名前に「zu」を含む従業員を検索 --
SELECT * FROM employees WHERE name LIKE '%zu%';

-- 年齢が２５歳から３５歳の間の従業員を検索 --
SELECT * FROM employees WHERE age BETWEEN 25 AND 35;

-- positionが、「Developer」または「Analyst」のいずれかである従業員を検索 --
SELECT * FROM employees WHERE position IN ('Developer', 'Analyst');

-- 演習問題 --
-- 年齢が３０歳以上かつ給与が４０００以上の従業員の名前と役職を年齢の年齢の降順で取得--
SELECT name, position FROM employees WHERE age >= 30 AND salary >= 4000 ORDER BY age DESC, salary DESC;

-- Developer以外の職種のうち２０２０年以降に雇用された従業員の名前と雇用日を取得 --
-- <>は「等しくない」という意味です --
SELECT name, hire_date FROM employees 
WHERE position <> 'Developer' AND hire_date >= '2020-01-01'

-- 重複しない役職(position)をアルファベット順で取得 --
SELECT DISTINCT position FROM employees ORDER BY position;