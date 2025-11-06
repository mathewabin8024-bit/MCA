import calendar
year=int(input("enter the year:"))
leap_year=calendar.isleap(year)
if leap_year:
    print(year,"is a leap year")
else:
    print(year, "is not a leap year")