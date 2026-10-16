# strategies/ · 策略源码存档

本目录按三大类存放从 GitHub 搜集并 vendoring 的量化策略**源码**（已 `git clone --depth 1` 后移除各自 `.git`，仅留源码便于阅读）。

```
strategies/
├── mt5-mql5-ea/          # A 类：MT5/MQL5 EA（与主人 MT5 平台直接相关）
├── xauusd-gold/          # B 类：XAUUSD / 黄金专属策略（主线品种对口）
└── quant-frameworks/     # C 类：通用量化 / 回测框架（为未来股票/期货准备）
```

每个子目录对应 `README.md` 索引中的条目（A1–A5 / B1–B9 / C1–C5）。
各仓库的 `LICENSE` 文件保留在原始位置；归属与许可见根目录 `NOTICE.md`。

> 重新拉取全部源码：`bash ../_clone.sh`（需网络与 git）。
> 这些代码仅供个人研究，商用或分发前请核对各仓库许可证。
