module = "huawei"
typesetopts = "--interaction=batchmode --shell-escape"
checkopts = "--interaction=batchmode --shell-escape"
tagfiles = {"build.lua", "huawei.dtx"}
typesetexe  = "pdflatex"

uploadconfig = {
  pkg = "huawei",
  ctanupload = true,
  version = "0.0.0",
  author = "Yegor Bugayenko",
  uploader = "Yegor Bugayenko",
  email = "yegor256@gmail.com",
  note = "Bug fixes",
  announcement = "",
  ctanPath = "/macros/latex/contrib/huawei",
  bugtracker = "https://github.com/yegor256/huawei/issues",
  home = "https://github.com/yegor256/huawei",
  description = "This unofficial package provides a class for creating documents for people working with Huawei Technologies Co., Ltd.",
  development = "https://github.com/yegor256/huawei",
  license = "mit",
  summary = "Template for Huawei documents",
  repository = "https://github.com/yegor256/huawei",
  support = "https://github.com/yegor256/huawei",
  topic = { "class", "misc-paper" }
}

function update_tag (file , content , tagname , tagdate)
  if string.match(file, "%.dtx$") then
    return string
      .gsub(content, "0%.0%.0", tagname)
      .gsub(content, "0000%-00%-00", os.date("%Y-%m-%d"))
  end
  return content
end