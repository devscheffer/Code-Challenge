select 
    convert(numeric(9,4),
        round(
            (max(lat_n) - min(long_w))
            + (max(long_w) - min(lat_n))
        ,4
        )
    )

from station