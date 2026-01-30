
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

SELECT 
    part, 
    assembly_step
FROM 
    parts_assembly
WHERE 
    finish_date IS NULL;

/*Prova da Entrevista de SQL da J.P Morgan Chase*/
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
