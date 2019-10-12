# Your Code Here
def map(k)
  new = []
  i = 0
  while i < k.length
    new.push(yield(k[i]))
    i += 1
  end
  new
end

def reduce(k, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = k[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end