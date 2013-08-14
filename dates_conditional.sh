#!/bin/bash


month=`date +%m`
year=`date +%Y`
leap_year_test=$(($year % 4))

# february, non-leap year
if [ $leap_year_test != 0 ] && [ $month -eq 02 ]
    then
        days=28 && echo $days "TWENTY-ATE"
fi

# february, leap year
if [ $leap_year_test -eq 0 ] && [ $month -eq 02 ]
    then    
        days=29 && echo $days "TWENNNY-NINE"
fi

# 30 day months
if [ $month -eq 04 ] || [ $month -eq 06 ] || [ $month -eq 09 ] || \
   [ $month -eq 11 ]
   then
       days=30 && echo $days "THIRDEE"
fi

# 31 day months
if [ $month -eq 01 ] || [ $month -eq 03 ] || [ $month -eq 05 ] || \
   [ $month -eq 07 ] || [ $month -eq 08 ] || [ $month -eq 10 ] || \
   [ $month -eq 12 ]
  then
      days=31 && echo $days "THIRTY-ONE"
fi
