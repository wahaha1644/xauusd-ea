#!/usr/bin/env bash
# 重新拉取全部策略源码（depth=1），移除各自 .git 后仅留源码
set -u
BASE="$(cd "$(dirname "$0")" && pwd)"
TRASH="$BASE/../_trash_git"; mkdir -p "$TRASH"

echo ">>> EA31337/EA31337"
rm -rf "$BASE/strategies/mt5-mql5-ea/EA31337"
git clone --depth 1 "https://github.com/EA31337/EA31337.git" "$BASE/strategies/mt5-mql5-ea/EA31337"
if [ -d "$BASE/strategies/mt5-mql5-ea/EA31337/.git" ]; then mv "$BASE/strategies/mt5-mql5-ea/EA31337/.git" "$TRASH/n_$(echo EA31337/EA31337 | tr / _)"; fi

echo ">>> logiccrafterdz/Argus"
rm -rf "$BASE/strategies/mt5-mql5-ea/Argus"
git clone --depth 1 "https://github.com/logiccrafterdz/Argus.git" "$BASE/strategies/mt5-mql5-ea/Argus"
if [ -d "$BASE/strategies/mt5-mql5-ea/Argus/.git" ]; then mv "$BASE/strategies/mt5-mql5-ea/Argus/.git" "$TRASH/n_$(echo logiccrafterdz/Argus | tr / _)"; fi

echo ">>> AmAfSh/Amin_MultiStrategy_Bot_V30"
rm -rf "$BASE/strategies/mt5-mql5-ea/Amin_MultiStrategy_Bot_V30"
git clone --depth 1 "https://github.com/AmAfSh/Amin_MultiStrategy_Bot_V30.git" "$BASE/strategies/mt5-mql5-ea/Amin_MultiStrategy_Bot_V30"
if [ -d "$BASE/strategies/mt5-mql5-ea/Amin_MultiStrategy_Bot_V30/.git" ]; then mv "$BASE/strategies/mt5-mql5-ea/Amin_MultiStrategy_Bot_V30/.git" "$TRASH/n_$(echo AmAfSh/Amin_MultiStrategy_Bot_V30 | tr / _)"; fi

echo ">>> NulvexN/Forex-Scalping-EA-MT5-MT1"
rm -rf "$BASE/strategies/mt5-mql5-ea/Forex-Scalping-EA-MT5-MT1"
git clone --depth 1 "https://github.com/NulvexN/Forex-Scalping-EA-MT5-MT1.git" "$BASE/strategies/mt5-mql5-ea/Forex-Scalping-EA-MT5-MT1"
if [ -d "$BASE/strategies/mt5-mql5-ea/Forex-Scalping-EA-MT5-MT1/.git" ]; then mv "$BASE/strategies/mt5-mql5-ea/Forex-Scalping-EA-MT5-MT1/.git" "$TRASH/n_$(echo NulvexN/Forex-Scalping-EA-MT5-MT1 | tr / _)"; fi

echo ">>> Bongo-Seakhoa/mql5_ea"
rm -rf "$BASE/strategies/mt5-mql5-ea/mql5_ea"
git clone --depth 1 "https://github.com/Bongo-Seakhoa/mql5_ea.git" "$BASE/strategies/mt5-mql5-ea/mql5_ea"
if [ -d "$BASE/strategies/mt5-mql5-ea/mql5_ea/.git" ]; then mv "$BASE/strategies/mt5-mql5-ea/mql5_ea/.git" "$TRASH/n_$(echo Bongo-Seakhoa/mql5_ea | tr / _)"; fi

echo ">>> ilahuerta-IA/backtrader-pullback-window-xauusd"
rm -rf "$BASE/strategies/xauusd-gold/backtrader-pullback-window-xauusd"
git clone --depth 1 "https://github.com/ilahuerta-IA/backtrader-pullback-window-xauusd.git" "$BASE/strategies/xauusd-gold/backtrader-pullback-window-xauusd"
if [ -d "$BASE/strategies/xauusd-gold/backtrader-pullback-window-xauusd/.git" ]; then mv "$BASE/strategies/xauusd-gold/backtrader-pullback-window-xauusd/.git" "$TRASH/n_$(echo ilahuerta-IA/backtrader-pullback-window-xauusd | tr / _)"; fi

echo ">>> zero-was-here/tradingbot"
rm -rf "$BASE/strategies/xauusd-gold/tradingbot"
git clone --depth 1 "https://github.com/zero-was-here/tradingbot.git" "$BASE/strategies/xauusd-gold/tradingbot"
if [ -d "$BASE/strategies/xauusd-gold/tradingbot/.git" ]; then mv "$BASE/strategies/xauusd-gold/tradingbot/.git" "$TRASH/n_$(echo zero-was-here/tradingbot | tr / _)"; fi

echo ">>> P1Piyush/XAUUSD-Trading-Bots"
rm -rf "$BASE/strategies/xauusd-gold/XAUUSD-Trading-Bots"
git clone --depth 1 "https://github.com/P1Piyush/XAUUSD-Trading-Bots.git" "$BASE/strategies/xauusd-gold/XAUUSD-Trading-Bots"
if [ -d "$BASE/strategies/xauusd-gold/XAUUSD-Trading-Bots/.git" ]; then mv "$BASE/strategies/xauusd-gold/XAUUSD-Trading-Bots/.git" "$TRASH/n_$(echo P1Piyush/XAUUSD-Trading-Bots | tr / _)"; fi

echo ">>> RobertN1D/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE"
rm -rf "$BASE/strategies/xauusd-gold/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE"
git clone --depth 1 "https://github.com/RobertN1D/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE.git" "$BASE/strategies/xauusd-gold/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE"
if [ -d "$BASE/strategies/xauusd-gold/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE/.git" ]; then mv "$BASE/strategies/xauusd-gold/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE/.git" "$TRASH/n_$(echo RobertN1D/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE | tr / _)"; fi

echo ">>> thunderstrike668/forex-c15-trader-strategy-mt4"
rm -rf "$BASE/strategies/xauusd-gold/forex-c15-trader-strategy-mt4"
git clone --depth 1 "https://github.com/thunderstrike668/forex-c15-trader-strategy-mt4.git" "$BASE/strategies/xauusd-gold/forex-c15-trader-strategy-mt4"
if [ -d "$BASE/strategies/xauusd-gold/forex-c15-trader-strategy-mt4/.git" ]; then mv "$BASE/strategies/xauusd-gold/forex-c15-trader-strategy-mt4/.git" "$TRASH/n_$(echo thunderstrike668/forex-c15-trader-strategy-mt4 | tr / _)"; fi

echo ">>> lightningfast66/forex-stgfx-advanced-strategy-mt4"
rm -rf "$BASE/strategies/xauusd-gold/forex-stgfx-advanced-strategy-mt4"
git clone --depth 1 "https://github.com/lightningfast66/forex-stgfx-advanced-strategy-mt4.git" "$BASE/strategies/xauusd-gold/forex-stgfx-advanced-strategy-mt4"
if [ -d "$BASE/strategies/xauusd-gold/forex-stgfx-advanced-strategy-mt4/.git" ]; then mv "$BASE/strategies/xauusd-gold/forex-stgfx-advanced-strategy-mt4/.git" "$TRASH/n_$(echo lightningfast66/forex-stgfx-advanced-strategy-mt4 | tr / _)"; fi

echo ">>> lightningfast66/forex-prime-trx-mt4-strategy"
rm -rf "$BASE/strategies/xauusd-gold/forex-prime-trx-mt4-strategy"
git clone --depth 1 "https://github.com/lightningfast66/forex-prime-trx-mt4-strategy.git" "$BASE/strategies/xauusd-gold/forex-prime-trx-mt4-strategy"
if [ -d "$BASE/strategies/xauusd-gold/forex-prime-trx-mt4-strategy/.git" ]; then mv "$BASE/strategies/xauusd-gold/forex-prime-trx-mt4-strategy/.git" "$TRASH/n_$(echo lightningfast66/forex-prime-trx-mt4-strategy | tr / _)"; fi

echo ">>> itsmustafa119/structure-scope"
rm -rf "$BASE/strategies/xauusd-gold/structure-scope"
git clone --depth 1 "https://github.com/itsmustafa119/structure-scope.git" "$BASE/strategies/xauusd-gold/structure-scope"
if [ -d "$BASE/strategies/xauusd-gold/structure-scope/.git" ]; then mv "$BASE/strategies/xauusd-gold/structure-scope/.git" "$TRASH/n_$(echo itsmustafa119/structure-scope | tr / _)"; fi

echo ">>> tensecrocodile/xauusd-trading-strategy"
rm -rf "$BASE/strategies/xauusd-gold/xauusd-trading-strategy"
git clone --depth 1 "https://github.com/tensecrocodile/xauusd-trading-strategy.git" "$BASE/strategies/xauusd-gold/xauusd-trading-strategy"
if [ -d "$BASE/strategies/xauusd-gold/xauusd-trading-strategy/.git" ]; then mv "$BASE/strategies/xauusd-gold/xauusd-trading-strategy/.git" "$TRASH/n_$(echo tensecrocodile/xauusd-trading-strategy | tr / _)"; fi

echo ">>> mementum/backtrader"
rm -rf "$BASE/strategies/quant-frameworks/backtrader"
git clone --depth 1 "https://github.com/mementum/backtrader.git" "$BASE/strategies/quant-frameworks/backtrader"
if [ -d "$BASE/strategies/quant-frameworks/backtrader/.git" ]; then mv "$BASE/strategies/quant-frameworks/backtrader/.git" "$TRASH/n_$(echo mementum/backtrader | tr / _)"; fi

echo ">>> vnpy/vnpy"
rm -rf "$BASE/strategies/quant-frameworks/vnpy"
git clone --depth 1 "https://github.com/vnpy/vnpy.git" "$BASE/strategies/quant-frameworks/vnpy"
if [ -d "$BASE/strategies/quant-frameworks/vnpy/.git" ]; then mv "$BASE/strategies/quant-frameworks/vnpy/.git" "$TRASH/n_$(echo vnpy/vnpy | tr / _)"; fi

echo ">>> fasiondog/hikyuu"
rm -rf "$BASE/strategies/quant-frameworks/hikyuu"
git clone --depth 1 "https://github.com/fasiondog/hikyuu.git" "$BASE/strategies/quant-frameworks/hikyuu"
if [ -d "$BASE/strategies/quant-frameworks/hikyuu/.git" ]; then mv "$BASE/strategies/quant-frameworks/hikyuu/.git" "$TRASH/n_$(echo fasiondog/hikyuu | tr / _)"; fi

echo ">>> coding-kitties/investing-algorithm-framework"
rm -rf "$BASE/strategies/quant-frameworks/investing-algorithm-framework"
git clone --depth 1 "https://github.com/coding-kitties/investing-algorithm-framework.git" "$BASE/strategies/quant-frameworks/investing-algorithm-framework"
if [ -d "$BASE/strategies/quant-frameworks/investing-algorithm-framework/.git" ]; then mv "$BASE/strategies/quant-frameworks/investing-algorithm-framework/.git" "$TRASH/n_$(echo coding-kitties/investing-algorithm-framework | tr / _)"; fi

echo ">>> 51bitquant/howtrader"
rm -rf "$BASE/strategies/quant-frameworks/howtrader"
git clone --depth 1 "https://github.com/51bitquant/howtrader.git" "$BASE/strategies/quant-frameworks/howtrader"
if [ -d "$BASE/strategies/quant-frameworks/howtrader/.git" ]; then mv "$BASE/strategies/quant-frameworks/howtrader/.git" "$TRASH/n_$(echo 51bitquant/howtrader | tr / _)"; fi

echo ">>> trentstauff/FXBot"
rm -rf "$BASE/strategies/forex-general/FXBot"
git clone --depth 1 "https://github.com/trentstauff/FXBot.git" "$BASE/strategies/forex-general/FXBot"
if [ -d "$BASE/strategies/forex-general/FXBot/.git" ]; then mv "$BASE/strategies/forex-general/FXBot/.git" "$TRASH/n_$(echo trentstauff/FXBot | tr / _)"; fi

echo ">>> VoxHash/ForexSmartBot"
rm -rf "$BASE/strategies/forex-general/ForexSmartBot"
git clone --depth 1 "https://github.com/VoxHash/ForexSmartBot.git" "$BASE/strategies/forex-general/ForexSmartBot"
if [ -d "$BASE/strategies/forex-general/ForexSmartBot/.git" ]; then mv "$BASE/strategies/forex-general/ForexSmartBot/.git" "$TRASH/n_$(echo VoxHash/ForexSmartBot | tr / _)"; fi

echo ">>> NadirAliOfficial/conservative-scalper-ea"
rm -rf "$BASE/strategies/forex-general/conservative-scalper-ea"
git clone --depth 1 "https://github.com/NadirAliOfficial/conservative-scalper-ea.git" "$BASE/strategies/forex-general/conservative-scalper-ea"
if [ -d "$BASE/strategies/forex-general/conservative-scalper-ea/.git" ]; then mv "$BASE/strategies/forex-general/conservative-scalper-ea/.git" "$TRASH/n_$(echo NadirAliOfficial/conservative-scalper-ea | tr / _)"; fi

echo ">>> EA31337/EA31337-classes"
rm -rf "$BASE/strategies/forex-general/EA31337-classes"
git clone --depth 1 "https://github.com/EA31337/EA31337-classes.git" "$BASE/strategies/forex-general/EA31337-classes"
if [ -d "$BASE/strategies/forex-general/EA31337-classes/.git" ]; then mv "$BASE/strategies/forex-general/EA31337-classes/.git" "$TRASH/n_$(echo EA31337/EA31337-classes | tr / _)"; fi

echo ">>> Profart86/silver-trading-bot"
rm -rf "$BASE/strategies/silver/silver-trading-bot"
git clone --depth 1 "https://github.com/Profart86/silver-trading-bot.git" "$BASE/strategies/silver/silver-trading-bot"
if [ -d "$BASE/strategies/silver/silver-trading-bot/.git" ]; then mv "$BASE/strategies/silver/silver-trading-bot/.git" "$TRASH/n_$(echo Profart86/silver-trading-bot | tr / _)"; fi

echo ">>> Anselzwx/hmm-trading-strategy"
rm -rf "$BASE/strategies/silver/hmm-trading-strategy"
git clone --depth 1 "https://github.com/Anselzwx/hmm-trading-strategy.git" "$BASE/strategies/silver/hmm-trading-strategy"
if [ -d "$BASE/strategies/silver/hmm-trading-strategy/.git" ]; then mv "$BASE/strategies/silver/hmm-trading-strategy/.git" "$TRASH/n_$(echo Anselzwx/hmm-trading-strategy | tr / _)"; fi

echo ">>> braveheartcc33/hyperhedge"
rm -rf "$BASE/strategies/silver/hyperhedge"
git clone --depth 1 "https://github.com/braveheartcc33/hyperhedge.git" "$BASE/strategies/silver/hyperhedge"
if [ -d "$BASE/strategies/silver/hyperhedge/.git" ]; then mv "$BASE/strategies/silver/hyperhedge/.git" "$TRASH/n_$(echo braveheartcc33/hyperhedge | tr / _)"; fi

echo ">>> youcef-yk/my_project_smart_crude"
rm -rf "$BASE/strategies/crude-oil/my_project_smart_crude"
git clone --depth 1 "https://github.com/youcef-yk/my_project_smart_crude.git" "$BASE/strategies/crude-oil/my_project_smart_crude"
if [ -d "$BASE/strategies/crude-oil/my_project_smart_crude/.git" ]; then mv "$BASE/strategies/crude-oil/my_project_smart_crude/.git" "$TRASH/n_$(echo youcef-yk/my_project_smart_crude | tr / _)"; fi

echo ">>> martinsurgenorhynx-cmd/ai-crude-oil-trading-bot"
rm -rf "$BASE/strategies/crude-oil/ai-crude-oil-trading-bot"
git clone --depth 1 "https://github.com/martinsurgenorhynx-cmd/ai-crude-oil-trading-bot.git" "$BASE/strategies/crude-oil/ai-crude-oil-trading-bot"
if [ -d "$BASE/strategies/crude-oil/ai-crude-oil-trading-bot/.git" ]; then mv "$BASE/strategies/crude-oil/ai-crude-oil-trading-bot/.git" "$TRASH/n_$(echo martinsurgenorhynx-cmd/ai-crude-oil-trading-bot | tr / _)"; fi

echo ">>> amstrdm/mlm-trend-following"
rm -rf "$BASE/strategies/index-futures/mlm-trend-following"
git clone --depth 1 "https://github.com/amstrdm/mlm-trend-following.git" "$BASE/strategies/index-futures/mlm-trend-following"
if [ -d "$BASE/strategies/index-futures/mlm-trend-following/.git" ]; then mv "$BASE/strategies/index-futures/mlm-trend-following/.git" "$TRASH/n_$(echo amstrdm/mlm-trend-following | tr / _)"; fi

echo ">>> deshwalmahesh/NSE-Stock-Scanner"
rm -rf "$BASE/strategies/index-futures/NSE-Stock-Scanner"
git clone --depth 1 "https://github.com/deshwalmahesh/NSE-Stock-Scanner.git" "$BASE/strategies/index-futures/NSE-Stock-Scanner"
if [ -d "$BASE/strategies/index-futures/NSE-Stock-Scanner/.git" ]; then mv "$BASE/strategies/index-futures/NSE-Stock-Scanner/.git" "$TRASH/n_$(echo deshwalmahesh/NSE-Stock-Scanner | tr / _)"; fi

echo ">>> TexasCoding/project-x-py"
rm -rf "$BASE/strategies/index-futures/project-x-py"
git clone --depth 1 "https://github.com/TexasCoding/project-x-py.git" "$BASE/strategies/index-futures/project-x-py"
if [ -d "$BASE/strategies/index-futures/project-x-py/.git" ]; then mv "$BASE/strategies/index-futures/project-x-py/.git" "$TRASH/n_$(echo TexasCoding/project-x-py | tr / _)"; fi

echo ">>> qingyangfeng666/quant_research_project"
rm -rf "$BASE/strategies/domestic-futures/quant_research_project"
git clone --depth 1 "https://github.com/qingyangfeng666/quant_research_project.git" "$BASE/strategies/domestic-futures/quant_research_project"
if [ -d "$BASE/strategies/domestic-futures/quant_research_project/.git" ]; then mv "$BASE/strategies/domestic-futures/quant_research_project/.git" "$TRASH/n_$(echo qingyangfeng666/quant_research_project | tr / _)"; fi

echo ">>> qinxi1122/Cta_Strategy_vnpy"
rm -rf "$BASE/strategies/domestic-futures/Cta_Strategy_vnpy"
git clone --depth 1 "https://github.com/qinxi1122/Cta_Strategy_vnpy.git" "$BASE/strategies/domestic-futures/Cta_Strategy_vnpy"
if [ -d "$BASE/strategies/domestic-futures/Cta_Strategy_vnpy/.git" ]; then mv "$BASE/strategies/domestic-futures/Cta_Strategy_vnpy/.git" "$TRASH/n_$(echo qinxi1122/Cta_Strategy_vnpy | tr / _)"; fi

# ===== I 类：手动 / 半自动策略（SMC·ICT·价格行为·Pine）=====
# 默认未 vendoring 源码；如需本地读码，取消下面注释或手动 git clone（SOURCE.md 内含命令）
echo ">>> joshyattridge/smart-money-concepts (I1)"
rm -rf "$BASE/strategies/manual-strategies/smart-money-concepts"
git clone --depth 1 "https://github.com/joshyattridge/smart-money-concepts.git" "$BASE/strategies/manual-strategies/smart-money-concepts"
if [ -d "$BASE/strategies/manual-strategies/smart-money-concepts/.git" ]; then mv "$BASE/strategies/manual-strategies/smart-money-concepts/.git" "$TRASH/n_$(echo joshyattridge/smart-money-concepts | tr / _)"; fi

echo ">>> everget/tradingview-pinescript-indicators (I2)"
rm -rf "$BASE/strategies/manual-strategies/tradingview-pinescript-indicators"
git clone --depth 1 "https://github.com/everget/tradingview-pinescript-indicators.git" "$BASE/strategies/manual-strategies/tradingview-pinescript-indicators"
if [ -d "$BASE/strategies/manual-strategies/tradingview-pinescript-indicators/.git" ]; then mv "$BASE/strategies/manual-strategies/tradingview-pinescript-indicators/.git" "$TRASH/n_$(echo everget/tradingview-pinescript-indicators | tr / _)"; fi

echo ">>> Alorse/pinescript-strategies (I3)"
rm -rf "$BASE/strategies/manual-strategies/pinescript-strategies"
git clone --depth 1 "https://github.com/Alorse/pinescript-strategies.git" "$BASE/strategies/manual-strategies/pinescript-strategies"
if [ -d "$BASE/strategies/manual-strategies/pinescript-strategies/.git" ]; then mv "$BASE/strategies/manual-strategies/pinescript-strategies/.git" "$TRASH/n_$(echo Alorse/pinescript-strategies | tr / _)"; fi

echo ">>> ByteBard/ict-stradegy (I4)"
rm -rf "$BASE/strategies/manual-strategies/ict-stradegy"
git clone --depth 1 "https://github.com/ByteBard/ict-stradegy.git" "$BASE/strategies/manual-strategies/ict-stradegy"
if [ -d "$BASE/strategies/manual-strategies/ict-stradegy/.git" ]; then mv "$BASE/strategies/manual-strategies/ict-stradegy/.git" "$TRASH/n_$(echo ByteBard/ict-stradegy | tr / _)"; fi

echo ">>> kodalli/NT8-PAT-Strategy (I5)"
rm -rf "$BASE/strategies/manual-strategies/NT8-PAT-Strategy"
git clone --depth 1 "https://github.com/kodalli/NT8-PAT-Strategy.git" "$BASE/strategies/manual-strategies/NT8-PAT-Strategy"
if [ -d "$BASE/strategies/manual-strategies/NT8-PAT-Strategy/.git" ]; then mv "$BASE/strategies/manual-strategies/NT8-PAT-Strategy/.git" "$TRASH/n_$(echo kodalli/NT8-PAT-Strategy | tr / _)"; fi

echo ">>> KVignesh122/MT5-SMC-trading-bot (I6)"
rm -rf "$BASE/strategies/manual-strategies/MT5-SMC-trading-bot"
git clone --depth 1 "https://github.com/KVignesh122/MT5-SMC-trading-bot.git" "$BASE/strategies/manual-strategies/MT5-SMC-trading-bot"
if [ -d "$BASE/strategies/manual-strategies/MT5-SMC-trading-bot/.git" ]; then mv "$BASE/strategies/manual-strategies/MT5-SMC-trading-bot/.git" "$TRASH/n_$(echo KVignesh122/MT5-SMC-trading-bot | tr / _)"; fi

echo "=== done: 33 quant repos + 6 manual-strategy entries (I 类源码默认未拉) ==="
