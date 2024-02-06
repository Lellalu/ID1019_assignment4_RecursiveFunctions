defmodule Reduce do
  def length([]) do
    0
   end
  def length([], acc) do
    acc + 0
  end
  def length([_|t]) do
    length(t, 1)
  end
  def length([_|t], acc) do
    length(t, acc+1)
  end

  def odd([]) do [] end
  def odd([h|t]) do
    if(rem(h,2)===1) do
      [h|odd(t)]
    else
      odd(t)
    end
  end

  def even([]) do [] end
  def even([h|t]) do
    if(rem(h,2)===0) do
      [h|even(t)]
    else
      even(t)
    end
  end

  def inc([], _) do [] end
  def inc([h], x) do [h+x] end
  def inc([h|t], x) do
    [h+x | inc(t, x)]
  end

  def dec([], _) do [] end
  def dec([h], x) do [h-x] end
  def dec([h|t], x) do
    [h-x | dec(t, x)]
  end

  def mul([], _) do [] end
  def mul([h], x) do [h*x] end
  def mul([h|t], x) do
    [h*x | mul(t, x)]
  end

  def divi([], _) do [] end
  def divi([h], x) do [h/x] end
  def divi([h|t], x) do
    [h/x | divi(t, x)]
  end

  def remainder([], _) do [] end
  def remainder([h], x) do [rem(h,x)] end
  def remainder([h|t], x) do
    [rem(h,x) | remainder(t, x)]
  end

  def sum(list) do
    sum(list, 0)
  end
  def sum([], acc) do acc end
  def sum([h|t], acc) do
    sum(t, acc+h)
  end

  def prod([]) do 1 end
  def prod(list) do
    prod(list, 1)
  end
  def prod([], acc) do acc end
  def prod([h|t], acc) do
    prod(t, acc * h)
  end

  def map([], _) do [] end
  def map([h|t], f) do
    [f.(h)| map(t,f)]
  end

  def reducel([], acc, _) do acc end
  def reducel([h|t], acc, f) do
    reducel(t, f.(h, acc), f)
  end

  def reducer([], acc, _) do acc end
  def reducer([h|t], acc, f) do
    f.(h, reducer(t, acc, f))
  end

  def filter([], _) do [] end
  def filter([h|t], f) do
    if f.(h) do
      [h|filter(t, f)]
    else
      filter(t, f)
    end
  end

end
