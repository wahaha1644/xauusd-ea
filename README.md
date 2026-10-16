# xauusd-ea · 交易策略策展库

> 由 **胖娃娃**（主人的 AI 交易搭档）从 GitHub 搜集整理，供主人后续研究使用。
> 搜集日期：2026-10-17 · 形式：**策展索引 + 策略源码**（源码已 clone 进 `strategies/` 分目录）。

---

## 这个仓库是什么

主人做 **XAUUSD（伦敦金）H1 短线交易**，策略栈是 ATR 三件套 + MT5 EA。本仓库把 GitHub 上**有用的交易策略**搜集起来——既有量化 / EA 代码，也有**手动 / 半自动交易策略**（SMC·ICT·价格行为·Pine 信号），既保留可读的策展目录（本文件），也把源码 vendoring 进 `strategies/`，方便直接读码研究。

- **A 类**：MT5/MQL5 EA（与主人当前平台 MT5 直接相关）
- **B 类**：XAUUSD / 黄金 专属策略（与主线品种直接对口）
- **C 类**：通用量化 / 回测框架（为未来扩展到国内股票 / 期货做准备，如 vn.py 就是国内期货事实标准）
- **D 类**：通用外汇（EURUSD / GBPUSD 等非黄金货币对）
- **E 类**：白银（XAGUSD / 贵金属）
- **F 类**：原油（WTI / Brent 商品期货）
- **G 类**：股指期货 / 通用期货（ES / NASDAQ / 恒指等，及期货趋势跟踪）
- **H 类**：国内期货预备（商品 / 金融期货 CTA，为未来扩展预备）
- **I 类**：手动 / 半自动交易策略（SMC·ICT·价格行为·Pine 信号）——对应主人"手动交易策略也算"的要求；以方法论 / 指标工具为主，不是自动 EA
- **周期范围**：M1–H1 短线 / 日内均纳入（含 scalp、breakout、pullback 等）。**明确排除**秒级 / 毫秒级 tick 拼延迟的「军备竞赛式」HFT——那类不在本仓库关注范围。

---

## ⚠️ 研究前必读（先质疑，再采信）

主人定的规矩：**任何绩效数字先过"数字五问"再信**。本仓库里不少项目自带"胜率 75%""年化 120%""Sharpe 0.89"等漂亮数字，请注意：

1. **漂亮数字 ≠ 可复现**。没有附 MT5 Strategy Tester 实测截图 / 离线回测方法论（样本区间、手续费、滑点、是否含未来函数）的，一律按"宣传口径"看待。
2. **警惕未来函数 / 重绘指标**。B 类里很多 MT4 "non-repainting" 策略，名字喊得响，实际仍可能在 boundaries 上耍花招——读码时重点查 `iCustom` 调用和 `Repaint` 类逻辑。
3. **ML / DRL 类（如 B2 tradingbot）**：140+ 特征 + 2M steps 训练，极易过拟合到特定样本；**绝不可直接跟单**，只学其特征工程与风险管理思路。
4. **E / F 类质量提示**：GitHub 上"纯白银 / 纯原油"的优质独立仓库极少（大多 0–2★ 的个人小项目），严肃的 commodity 研究通常藏在通用期货框架（G1 / C2 / C3）里。E / F 类收录以"思路参考"为主，落地前务必自己复刻验证。
5. **许可证**：每个被 vendoring 的仓库都是第三方作品，版权归原作者。源码仅供**个人研究**，商用或分发前请各自核对 `LICENSE`（见 `NOTICE.md` 与 `strategies/<类>/<仓库>/LICENSE`）。
6. **本仓库不承诺任何策略有效**。它是一份"线索清单 + 可读源码"，不是 Signals 订阅。

---

## 目录结构

```
xauusd-ea/
├── README.md                 # 本策展索引
├── NOTICE.md                 # 第三方作品归属 / 许可证汇总
├── strategies/
│   ├── mt5-mql5-ea/          # A 类：MT5/MQL5 EA
│   ├── xauusd-gold/          # B 类：XAUUSD / 黄金专属
│   ├── quant-frameworks/     # C 类：通用回测框架
│   ├── forex-general/        # D 类：通用外汇
│   ├── silver/               # E 类：白银
│   ├── crude-oil/            # F 类：原油
│   ├── index-futures/        # G 类：股指期货 / 通用期货
│   ├── domestic-futures/     # H 类：国内期货预备
│   └── manual-strategies/    # I 类：手动 / 半自动策略（SMC·ICT·价格行为·Pine）
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

## D 类 · 通用外汇（EURUSD / GBPUSD 等非黄金货币对）

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| D1 | [trentstauff/FXBot](https://github.com/trentstauff/FXBot) | 313 | Python | 全自动外汇 bot，基于 OANDA API v20，含 ML 主题 | **D 类旗舰**。信号→下单→风控全链路工程范本，星高且活跃(2026-10)；学"完整自动化外汇系统"怎么搭 |
| D2 | [VoxHash/ForexSmartBot](https://github.com/VoxHash/ForexSmartBot) | 23 | Python | 桌面外汇 bot：策略+风险管理+回测+IB TWS+MT4（PyQt6 GUI） | 自带回测与风控模块，适合学 backtest/risk 框架如何落地；与 C1 思路互补 |
| D3 | [NadirAliOfficial/conservative-scalper-ea](https://github.com/NadirAliOfficial/conservative-scalper-ea) | 10 | MQL4 | MT4 保守 scalping：无马丁、无网格，资本保全优先 | **纪律化风险范例**，与主人"不扛单"原则同源；适合读它的仓位/止损逻辑 |
| D4 | [EA31337/EA31337-classes](https://github.com/EA31337/EA31337-classes) | 273 | MQL5 | EA31337 的 MQL 库/框架（写 EA/指标/脚本的底层类） | A1 的底层库，学 MQL5 EA 模块化开发必读配套；先看这个再读 A1 |

## E 类 · 白银（XAGUSD / 贵金属）

> ⚠️ GitHub 上"纯白银"优质独立仓库极少（多为 0–2★ 个人小项目）。以下以"思路参考"为主，严肃白银研究建议结合 G1 / C2 / C3 的贵金属/商品期货模块。

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| E1 | [Profart86/silver-trading-bot](https://github.com/Profart86/silver-trading-bot) | 0 | MT5 | 白银 MT5 机器人/策略合集 | 少数直接做白银的 MT5 仓库；星低需谨慎，读码看信号逻辑而非结论 |
| E2 | [Anselzwx/hmm-trading-strategy](https://github.com/Anselzwx/hmm-trading-strategy) | 0 | Python | HMM 机制切换策略（AAPL/金/银） | 用隐马尔可夫做 regime 切换，可借鉴到黄金/白银"震荡↔趋势"状态识别 |
| E3 | [braveheartcc33/hyperhedge](https://github.com/braveheartcc33/hyperhedge) | 0 | Python | 金银 pairs trading（Z-score 均值回归） | 统计套利视角（金银比均值回归），与主人的单边思路互补，拓展多品种对冲思路 |

## F 类 · 原油（WTI / Brent 商品期货）

> ⚠️ 同 E 类，纯原油独立仓库质量偏低。原油本质是商品期货，严肃做法是在 G1 / C2 / C3 的期货框架下做 WTI/Brent 连续合约。以下作"特征/思路"参考。

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| F1 | [youcef-yk/my_project_smart_crude](https://github.com/youcef-yk/my_project_smart_crude) | 0 | Python | AI 优化原油(Brent/WTI)交易：预测油价+优化买卖决策 | 看它如何用公开数据做油价预测+决策优化；星低，重思路轻结论 |
| F2 | [martinsurgenorhynx-cmd/ai-crude-oil-trading-bot](https://github.com/martinsurgenorhynx-cmd/ai-crude-oil-trading-bot) | 2 | Python | AI 原油 bot：技术指标+价格动量自动识别买卖 | 动量+技术指标的原油择时小项目；方法学参考，未经验证 |

## G 类 · 股指期货 / 通用期货（ES / NASDAQ / 恒指 / 趋势跟踪）

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| G1 | [amstrdm/mlm-trend-following](https://github.com/amstrdm/mlm-trend-following) | 45 | Python | MLM 式期货趋势跟踪：连续期货 200 日 MA + 波动过滤 + IBKR 下单 | **G 类旗舰**。经典 CTA 趋势跟踪范本，适用于股指/商品期货（含原油）；与主人"趋势过滤"思路同源，可对照学仓位与波动过滤 |
| G2 | [deshwalmahesh/NSE-Stock-Scanner](https://github.com/deshwalmahesh/NSE-Stock-Scanner) | 348 | Jupyter | 印度 NSE 股票/期货筛选器：横扫/动量/日内+风控+回测 | 完整"筛选→风控→回测"框架，跨市场参考；思路可迁移到 A 股/期货扫描 |
| G3 | [TexasCoding/project-x-py](https://github.com/TexasCoding/project-x-py) | 33 | Python | 期货交易平台 SDK：历史数据/实时流/微观结构工具 | 期货接入层与微观结构工具，未来做国内期货可借鉴其数据/下单抽象 |

## H 类 · 国内期货预备（商品 / 金融期货 CTA，为未来扩展预备）

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| H1 | [qingyangfeng666/quant_research_project](https://github.com/qingyangfeng666/quant_research_project) | 2 | Python | 中证500 股指期货 CTA 策略（中文注释） | **H 类最直接对口**。国内股指期货 CTA 入门范本，中文友好；配合 C2/vnpy 食用 |
| H2 | [qinxi1122/Cta_Strategy_vnpy](https://github.com/qinxi1122/Cta_Strategy_vnpy) | 10 | Jupyter | 基于 vnpy 1.73 的 CTA 策略实作 | vn.py(C2)生态的 CTA 落地，未来国内期货主战场配套；看它怎么把策略接进 vnpy 引擎 |

## I 类 · 手动 / 半自动交易策略（SMC·ICT·价格行为·Pine 信号）

> 本类对应主人"**手动交易策略也算**"的要求——GitHub 上这类资源以**方法论 / 指标工具 / 信号参考**为主，不是自动 EA。手动交易者（尤其 XAUUSD H1 SMC 派）可直接学其逻辑、用 TradingView / Pine 验证思路。**注意**：SMC/ICT 圈子营销号极多，下面只收有代码、可复现、星数 / 质量在线的仓库。

| # | 仓库 | ★ | 语言 | 简介 | 研究适配性（胖娃娃批注） |
|---|------|---|------|------|--------------------------|
| I1 | [joshyattridge/smart-money-concepts](https://github.com/joshyattridge/smart-money-concepts) | 2088 | Python | ICT 的 SMC 概念开源库：FVG / 流动性 / 订单块 / BMS 等指标 | **I 类旗舰**。把 ICT 的 SMC 讲法变成可计算指标，手动交易者学"SMC 到底怎么量化"的权威样本；先看它再读任何 SMC EA |
| I2 | [everget/tradingview-pinescript-indicators](https://github.com/everget/tradingview-pinescript-indicators) | 934 | Pine | TradingView 最大的 Pine 指标集合之一（均 / 带 / 震荡器） | 手动交易者技术分析工具箱；挑 ATR / 波动率 / 结构类指标与你 ATR 体系对照验证 |
| I3 | [Alorse/pinescript-strategies](https://github.com/Alorse/pinescript-strategies) | 250 | JS/Pine | 50+ 自定义 Pine 策略 / 指标 / 多警报脚本集合 | 现成策略模板库，手动验证"某思路历史上有没有用"效率很高；严格按"数字五问"复核其回测 |
| I4 | [ByteBard/ict-stradegy](https://github.com/ByteBard/ict-stradegy) | 13 | Python | Al Brooks 价格行为 33 策略代码化（pin bar / FTB / 趋势等） | 价格行为（裸 K）权威 Al Brooks 的体系化整理，手动日内交易者必读；与 SMC 互补看结构 |
| I5 | [kodalli/NT8-PAT-Strategy](https://github.com/kodalli/NT8-PAT-Strategy) | 20 | C# | NinjaTrader 8 价格行为交易策略 | 期货手动交易者参考：NT8 是期货圈主流手动平台；看它怎么把价格行为规则写成可执行策略 |
| I6 | [KVignesh122/MT5-SMC-trading-bot](https://github.com/KVignesh122/MT5-SMC-trading-bot) | 89 | MQL5 | SMC 自动化：订单块 / FVG / BOS + ATR / 时段 / regime 过滤 + 风控 | 虽是 EA，但 OB / FVG / BOS 逻辑是手动 SMC 的自动化范本；学"SMC 如何加过滤器降噪"，与其自动运行不如手动借鉴 |

---

## 建议的研究路径

1. **先读 B1（backtrader 黄金回调）**：状态机 + 透明指标 + OOS 意识，和主人 ATR 体系对话的最佳样本。
2. **对照学 A3 / B7 / D3 的风控**：多周期过滤 + ATR 动态止损 / 保守 scalping，与主人"H4 过滤 H1 / ATR_StopLoss"同源。
3. **扩展品种时看 G1（期货趋势跟踪）**：把"趋势过滤 + 波动过滤"从黄金推广到股指/商品期货。
4. **未来做国内期货**：从 H1（中证500 CTA）→ H2（vnpy CTA）→ C2（vnpy 主框架）逐步深入；C3（hikyuu）做高性能扫描。
5. **暂缓碰 B2（DRL）与 B4（9 策略评分）**：过拟合风险高，只看思路。
6. 任何想落地的策略，先按主人的"回测层 vs 实盘层"分层验证，再谈 EA 化。
7. **手动策略线（I 类）**：想做 XAUUSD H1 手动 SMC，从 I1（SMC 概念）→ I4（Al Brooks 价格行为）→ I2/I3（Pine 验证）打通；I6 学怎么给 SMC 加过滤器降噪。

---

## 许可证与归属

所有 `strategies/` 下的代码版权归各自原作者，本仓库仅作**个人研究收藏**。
逐仓库许可证见 `NOTICE.md`，原始 `LICENSE` 文件保留在各 `strategies/<类>/<仓库>/` 内。
