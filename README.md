# xauusd-ea · 量化策略收藏库

> 由 **胖娃娃**（主人的 AI 量化搭档）从 GitHub 搜集整理，供主人后续研究使用。
> 搜集日期：2026-10-17 · 形式：**策展索引 + 策略源码**（源码已 clone 进 `strategies/` 分目录）。

---

## 这个仓库是什么

主人做 **XAUUSD（伦敦金）H1 短线交易**，策略栈是 ATR 三件套 + MT5 EA。本仓库把 GitHub 上**有用的量化策略**按三类搜集起来，既保留可读的策展目录（本文件），也把源码 vendoring 进 `strategies/`，方便直接读码研究。

- **A 类**：MT5/MQL5 EA（与主人当前平台 MT5 直接相关）
- **B 类**：XAUUSD / 黄金 专属策略（与主线品种直接对口）
- **C 类**：通用量化 / 回测框架（为未来扩展到国内股票 / 期货做准备，如 vn.py 就是国内期货事实标准）

---

## ⚠️ 研究前必读（先质疑，再采信）

主人定的规矩：**任何绩效数字先过"数字五问"再信**。本仓库里不少项目自带"胜率 75%""年化 120%""Sharpe 0.89"等漂亮数字，请注意：

1. **漂亮数字 ≠ 可复现**。没有附 MT5 Strategy Tester 实测截图 / 离线回测方法论（样本区间、手续费、滑点、是否含未来函数）的，一律按"宣传口径"看待。
2. **警惕未来函数 / 重绘指标**。B 类里很多 MT4 "non-repainting" 策略，名字喊得响，实际仍可能在 boundaries 上耍花招——读码时重点查 `iCustom` 调用和 `Repaint` 类逻辑。
3. **ML / DRL 类（如 tradingbot）**：140+ 特征 + 2M steps 训练，极易过拟合到特定样本；**绝不可直接跟单**，只学其特征工程与风险管理思路。
4. **许可证**：每个被 vendoring 的仓库都是第三方作品，版权归原作者。源码仅供**个人研究**，商用或分发前请各自核对 `LICENSE`（见 `NOTICE.md` 与 `strategies/<类>/<仓库>/LICENSE`）。
5. **本仓库不承诺任何策略有效**。它是一份"线索清单 + 可读源码"，不是 Signals 订阅。

---

## 目录结构

```
xauusd-ea/
├── README.md                 # 本策展索引
├── NOTICE.md                 # 第三方作品归属 / 许可证汇总
├── strategies/
│   ├── mt5-mql5-ea/          # A 类：MT5/MQL5 EA
│   ├── xauusd-gold/          # B 类：XAUUSD / 黄金专属
│   └── quant-frameworks/     # C 类：通用回测框架
└── _clone.sh                 # 重新拉取所有源码的脚本（depth=1）
```

重新同步源码：`bash _clone.sh`（需要网络与 git）。

---

## A 类 · MT5 / MQL5 EA 策略

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| A1 | [EA31337/EA31337](https://github.com/EA31337/EA31337) | 1320 | C++/MQL | 老牌多策略外汇 EA，同时支持 MT4/MT5，社区活跃 | **必读旗舰**。架构、风险管理、参数体系成熟，是学 MQL5 EA 工程化的好范本；别直接抄信号，学它的模块拆分 |
| A2 | [logiccrafterdz/Argus](https://github.com/logiccrafterdz/Argus) | 17 | MQL5(集) | 一组专业 MQL5 策略与 EA 合集 | 轻量合集，适合横向对比不同信号写法；星少但更新频繁(2026-10) |
| A3 | [AmAfSh/Amin_MultiStrategy_Bot_V30](https://github.com/AmAfSh/Amin_MultiStrategy_Bot_V30) | 7 | MQL5 | 多周期自动化系统，含技术分析+风控+实时信号过滤 | 多周期过滤思路与主人"H4 方向过滤 H1 信号"可对照着看 |
| A4 | [NulvexN/Forex-Scalping-EA-MT5-MT1](https://github.com/NulvexN/Forex-Scalping-EA-MT5-MT1) | 30 | C# | MT5 一分钟/五分钟高频 scalping | scalping 与主人 H1 短线不同频，参考价值在订单流/快速出场逻辑；注意点差敏感 |
| A5 | [Bongo-Seakhoa/mql5_ea](https://github.com/Bongo-Seakhoa/mql5_ea) | 13 | (Notebook) | 社区协作型 MT5 EA | 社区共建型，质量参差，挑其中信号模块读即可 |

## B 类 · XAUUSD / 黄金 专属策略

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| B1 | [ilahuerta-IA/backtrader-pullback-window-xauusd](https://github.com/ilahuerta-IA/backtrader-pullback-window-xauusd) | 77 | Python | 黄金 4 阶段状态机回调策略，Sharpe 0.89 / PF 1.64 / WR 55.4% / DD 5.8% / 5年+44.8% | **B 类最值得精读**。backtrader 实现完整、指标透明、有 OOS 意识；数字要按"数字五问"复核样本区间，但方法论比多数 MT4 黑盒干净 |
| B2 | [zero-was-here/tradingbot](https://github.com/zero-was-here/tradingbot) | 207 | Python | DRL 黄金 bot：PPO/Dreamer + 140+ 特征 + MT5 实盘，2M steps | 星高但**风险最高**：DRL 极易过拟合，只学特征工程与多周期/宏观数据接入；严禁直接跟单 |
| B3 | [P1Piyush/XAUUSD-Trading-Bots](https://github.com/P1Piyush/XAUUSD-Trading-Bots) | 30 | Python | 机构式 XAUUSD：ICT/SMC + HFT scalping + ML 推理 on MT5 | ICT/SMC 与主人拐点/结构思路可对照；ML 推理部分看思路即可 |
| B4 | [RobertN1D/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE](https://github.com/RobertN1D/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE) | 14 | MQL5 | 纯算法黄金 scalper：tick 流速 + DOM 失衡 + 9 策略评分引擎 | 订单流/微观结构方向值得研究；"9 策略评分"可能过拟合，读码重点看评分权重 |
| B5 | [thunderstrike668/forex-c15-trader-strategy-mt4](https://github.com/thunderstrike668/forex-c15-trader-strategy-mt4) | 29 | MQL4 | 非重绘 M15 日内信号 + 趋势过滤（Forex & Gold） | 与主人 M15/MT4 交叉参考；"non-repainting"需读码验证，别轻信标题 |
| B6 | [lightningfast66/forex-stgfx-advanced-strategy-mt4](https://github.com/lightningfast66/forex-stgfx-advanced-strategy-mt4) | 28 | MQL4 | 高盈亏比，非重绘 + 多周期波动过滤 + 系统化风控 | 风控模板（.set/.tpl）可借鉴；同样需验证非重绘 |
| B7 | [lightningfast66/forex-prime-trx-mt4-strategy](https://github.com/lightningfast66/forex-prime-trx-mt4-strategy) | 28 | MQL4 | 非重绘趋势+动量 + 动态 ATR 风控（Forex/Gold/Crypto） | ATR 动态止损思路与主人 ATR_StopLoss 体系可对照学习 |
| B8 | [itsmustafa119/structure-scope](https://github.com/itsmustafa119/structure-scope) | 10 | Python | SMC：市场结构/流动性/订单块/公允价值缺口（XAUUSD） | SMC 结构识别的 Python 实现，适合把"拐点/结构"思路量化 |
| B9 | [tensecrocodile/xauusd-trading-strategy](https://github.com/tensecrocodile/xauusd-trading-strategy) | 2 | Python | EMA 交叉 + ATR 风控 + Monte Carlo VaR，5 年 54% 胜率 | 小项目但方法学完整（含 MC VaR），适合入门级复刻练手 |

## C 类 · 通用量化 / 回测框架（为未来股票 / 期货准备）

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| C1 | [mementum/backtrader](https://github.com/mementum/backtrader) | 23491 | Python | 最流行的回测库，事件驱动 | **回测基石**。主人未来做样本外验证/参数扫描必学；B1 就是基于它 |
| C2 | [vnpy/vnpy](https://github.com/vnpy/vnpy) | 45904 | Python/C++ | 国内开源量化交易平台（CTA/期货/期权） | **未来国内期货主战场**。等主人扩展到国内期货时，这是事实标准框架 |
| C3 | [fasiondog/hikyuu](https://github.com/fasiondog/hikyuu) | 3561 | C++/Python | 高性能量化框架，重在策略分析与回测 | 国产、性能好；与 vn.py 互补，适合大样本多品种扫描 |
| C4 | [coding-kitties/investing-algorithm-framework](https://github.com/coding-kitties/investing-algorithm-framework) | 2178 | Python | 开发/回测/部署全自动交易算法的完整框架 | 全栈式框架，适合想从研究到部署打通时参考 |
| C5 | [51bitquant/howtrader](https://github.com/51bitquant/howtrader) | 964 | Python | 加密量化框架，基于 vn.py，接 TradingView 信号 | 信号接入/Webhook 下单思路可借鉴；加密线非主人当前重点 |

---

## 建议的研究路径

1. **先读 B1（backtrader-pullback-window-xauusd）**：它把"状态机 + 透明指标 + OOS 意识"做得很干净，是和主人 ATR 体系对话的最佳样本。
2. **对照学 A3 / B7 的风控**：多周期过滤 + ATR 动态止损，和主人"H4 过滤 H1 / ATR_StopLoss"同源。
3. **暂缓碰 B2（DRL）与 B4（9 策略评分）**：过拟合风险高，只看思路。
4. **未来扩品种时**再深入 C2（vn.py）/ C3（hikyuu）。
5. 任何想落地的策略，先按主人的"回测层 vs 实盘层"分层验证，再谈 EA 化。

---

## 许可证与归属

所有 `strategies/` 下的代码版权归各自原作者，本仓库仅作**个人研究收藏**。
逐仓库许可证见 `NOTICE.md`，原始 `LICENSE` 文件保留在各 `strategies/<类>/<仓库>/` 内。
