-- Total de paiement encaise au cours d'une annee pour chaque hotel
SELECT
    sum(pay.amount_paid) as total_in_year,
    ho.name
FROM "payment" pay
    INNER JOIN receptionist re ON pay.id_receptionist = re.id
    INNER JOIN hotel ho ON ho.id = re.id_hotel
WHERE date_part('year', pay.payment_date) = '2023' -- <-- Param
GROUP BY ho.id, re.id;


-- NOTE :
-- *Param : paramatre qu'on peut changer