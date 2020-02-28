select
    CASE
        when A + B <= C  OR A + C <= B OR B + C <= A 
            THEN 'Not A Triangle'
        when (A = B AND B = C) 
            THEN 'Equilateral'
        when (A = B and A <>C) or (B = C and B <>A) or (A = C and A<>B)
            THEN 'Isosceles'
        ELSE 'Scalene'
        END  AS TESTE
FROM TRIANGLES