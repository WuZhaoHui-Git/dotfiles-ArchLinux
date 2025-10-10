-- 官方支持修改下载镜像
-- see https://github.com/nvim-treesitter/nvim-treesitter/tree/master?tab=readme-ov-file#i-want-to-use-a-mirror-instead-of-httpsgithubcom
-- 仓库内文件未提供方法get_parser_configs，与链接示例代码不对应，更新后请注意启动是否有错误信息
for _, config in pairs(require("nvim-treesitter.parsers")) do
  if config.install_info ~= nil then
    if config.install_info.url ~= nil then
      -- 请在下面设置你的下载镜像
      config.install_info.url =
        config.install_info.url:gsub("https://github.com/", "https://gh-proxy.com/https://github.com/")
    end
  end
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {},
  },
}

