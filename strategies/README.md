# strategies/ · 策略源码存档

本目录按九大类存放从 GitHub 搜集并 vendoring 的量化策略**源码**（已 `git clone --depth 1` 后移除各自 `.git`，仅留源码便于阅读）。**I 类（手动 / 半自动策略）仅作索引、未 vendoring 源码**——其 `SOURCE.md` 内含一键 `git clone` 命令，按需自行拉取。

```
strategies/
├── mt5-mql5-ea/          # A 类：MT5/MQL5 EA（与主人 MT5 平台直接相关）
├── xauusd-gold/          # B 类：XAUUSD / 黄金专属策略（主线品种对口）
├── quant-frameworks/     # C 类：通用量化 / 回测框架（为未来股票/期货准备）
├── forex-general/        # D 类：通用外汇（EURUSD / GBPUSD 等非黄金）
├── silver/               # E 类：白银（XAGUSD / 贵金属）
├── crude-oil/            # F 类：原油（WTI / Brent 商品期货）
├── index-futures/        # G 类：股指期货 / 通用期货（ES / NASDAQ / 恒指 / 趋势跟踪）
├── domestic-futures/     # H 类：国内期货预备（商品 / 金融期货 CTA）
└── manual-strategies/    # I 类：手动 / 半自动策略（SMC·ICT·价格行为·Pine，仅索引）
```

每个子目录对应 `README.md` 索引中的条目（A1–A5 / B1–B9 / C1–C5 / D1–D4 / E1–E3 / F1–F2 / G1–G3 / H1–H2 / I1–I6）。
各仓库的 `LICENSE` 文件保留在原始位置；归属与许可见根目录 `NOTICE.md`。

> 重新拉取全部源码：`bash ../_clone.sh`（需网络与 git）。
> 这些代码仅供个人研究，商用或分发前请核对各仓库许可证。
