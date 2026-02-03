/* 1 Prova da Entrevista de SQL da Microsoft*/
SELECT 
COUNT(content),
sender_id
FROM microsoft_sql_teams_messages
GROUP BY  sender_id
ORDER BY COUNT(content) DESC
LIMIT 2

/*2 Amazon*/
SELECT 
    MONTH(data_avaliacao) AS mes,
    product_id,
    ROUND(AVG(estrelas), 2) AS classificacao_media
FROM 
    reviews
GROUP BY 
    MONTH(data_avaliacao), 
    product_id
ORDER BY 
    mes, 
    product_id;
/*3 Prova da Entrevista de SQL da Tesla*/
SELECT 
    part, 
    assembly_step
FROM 
    parts_assembly
WHERE 
    finish_date IS NULL;

/* 4 Prova da Entrevista de SQL da J.P Morgan Chase*/
SELECT 
card_name,
MAX(issued_amount) - MIN(issued_amount) difference
FROM monthly_cards_issued
GROUP BY card_name;
/*Pergunta 5 do 7*/
SELECT  
user_id
FROM emails
WHERE email_id in(
    SELECT email_id
    FROM texts
    WHERE texts.signup_action = 'Not confirmed'
)
/* 6 Prova da Entrevista de SQL do Linkedin*/
SELECT  
COUNT(title)-1 duplicate_companies
FROM job_listings
GROUP BY description
HAVING COUNT(title)-1 >=1
    
/*  7  Prova da Entrevista de SQL do Quickbooks*/


SELECT 
    COUNT(CASE WHEN product LIKE '%TurboTax%' THEN 1 END) AS turbotax_total,
    COUNT(CASE WHEN product LIKE '%QuickBooks%' THEN 1 END) AS livros_rapidos_total
FROM filed_taxes;
