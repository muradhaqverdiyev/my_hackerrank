select round(abs(min(LAT_N) - MAX(LAT_N)) + abs(min(LONG_W) - max(LONG_W)),4) from station;