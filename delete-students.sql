DELETE expect FROM Students expect INNER JOIN (SELECT * FROM Students LIMIT 29,21) result on expect.id = result.id;
