function double_pinyin_flypy_date_translator(input, seg)
  if (input == "riq") then
    --- Candidate(type, start, end, text, comment)
    yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
    yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), " "))
  end
end

function double_pinyin_flypy_time_translator(input, seg)
  if (input == "uij") then
    local cand = Candidate("time", seg.start, seg._end, os.date("%H:%M"), " ")
    cand.quality = 1
    yield(cand)
  end
end

function flypy_date_translator(input, seg)
  if (input == "orq") then
    --- Candidate(type, start, end, text, comment)
    yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
    yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), " "))
  end
end

function flypy_time_translator(input, seg)
  if (input == "ouj") then
    local cand = Candidate("time", seg.start, seg._end, os.date("%H:%M"), " ")
    cand.quality = 1
    yield(cand)
  end
end
