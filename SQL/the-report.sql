select 
    case
        when gradeFinal < 8 then "NULL"
        else name 
        end as nameGrade
    ,gradeFinal
    ,marks
    from (
        select 
        a.name
        ,(
            select grade
            from grades
            where 
                marks >= min_mark
                and marks <= max_mark
        ) as gradeFinal
        ,a.marks
        from Students a
    ) as allGrade
    order by 
        gradeFinal desc
        ,name asc
        ,marks asc 
        