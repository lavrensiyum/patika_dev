def reverse_list(lst):
  if not lst:
    return []

  if isinstance(lst[0], list):
    return reverse_list(lst[1:]) + [reverse_list(lst[0])]
  else:
    return lst[::-1]


lst = [[1, 2], [3, 4], [5, 6, 7]]
reverse_list(lst)

lst = input()
print(reverse_list(lst)) 