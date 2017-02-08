permissions = ARGV[0].dup
permissions = permissions.split(//)
if permissions.size > 3
  exit 1
end
isvalid = 0
permissions.each do |perm|
  v = false
  if perm.to_i <= 7 and perm.to_i > 0
    v = true
  end
  if v
    isvalid += 1
  end
end
if isvalid == 3
  exit 0
else
  exit 1
end
