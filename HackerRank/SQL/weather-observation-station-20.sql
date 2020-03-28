select 
    NewLat
FROM (
    select 
        row_number() over (order by LAT_N) as rowNumber
        ,convert(numeric(9,4),round(LAT_N,4)) NewLat
    from station
) as tab1
WHERE rowNumber = (
    select 
        ceiling(convert(numeric(9,2),count(*))/2)
    from station
)
