
student={"anu":340,"teena":450, "john":300 }
asc_by_name=dict(sorted(student.items()))
print("sorted by name (ascending):")
print(asc_by_name)

deesc_by_name=dict(sorted(student.items(),reverse=True))
print("\nsorted by name (descending):")
print(deesc_by_name)

