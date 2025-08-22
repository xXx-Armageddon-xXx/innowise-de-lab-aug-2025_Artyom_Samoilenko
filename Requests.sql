-- Количество броней за каждый день
SELECT
	ReservationDate,
    COUNT(ReservationID) AS BookingsCount
FROM Reservations 
GROUP BY ReservationDate
ORDER BY ReservationDate DESC;

-- Количество обслуженных столов по сотрудникам за конкретный день
SELECT 
    s.StaffID,
    s.FirstName,
    s.LastName,
    COUNT(r.ReservationID) AS TablesServed
FROM Staff s
LEFT JOIN Reservations r ON s.StaffID = r.StaffID
    AND r.ReservationDate = '2025-08-19'
GROUP BY s.StaffID, s.FirstName, s.LastName
ORDER BY TablesServed DESC;

-- Топ-5 самых лояльных клиентов по количеству броней
SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.Phone,
    COUNT(r.ReservationID) AS TotalReservations,
    MIN(r.ReservationDate) AS FirstReservationDate,
    MAX(r.ReservationDate) AS LastReservationDate
FROM Customers c
JOIN Reservations r ON c.CustomerID = r.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.Email, c.Phone
ORDER BY TotalReservations DESC
LIMIT 5;	-- Изменив число, можно сделать топ больше/меньше, либо вообще убрать ограничение по количиству