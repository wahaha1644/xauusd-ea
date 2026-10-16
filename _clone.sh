#!/usr/bin/env bash
set -u
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

clone() {
  local cat="$1"; local url="$2"; local name="$3"
  local dest="strategies/$cat/$name"
  if [ -d "$dest" ]; then
    echo "SKIP (exists): $dest"
    return 0
  fi
  echo ">>> cloning $url -> $dest"
  if git clone --depth 1 "$url" "$dest" 2>&1 | tail -2; then
    rm -rf "$dest/.git"
    echo "OK: $dest"
  else
    echo "FAIL: $url"
  fi
}

mkdir -p strategies/mt5-mql5-ea strategies/xauusd-gold strategies/quant-frameworks

# Category 1: MT5/MQL5 EA
clone mt5-mql5-ea   https://github.com/EA31337/EA31337.git                                  EA31337
clone mt5-mql5-ea   https://github.com/logiccrafterdz/Argus.git                            Argus
clone mt5-mql5-ea   https://github.com/AmAfSh/Amin_MultiStrategy_Bot_V30.git              Amin_MultiStrategy_Bot_V30
clone mt5-mql5-ea   https://github.com/NulvexN/Forex-Scalping-EA-MT5-MT1.git              Forex-Scalping-EA-MT5-MT1
clone mt5-mql5-ea   https://github.com/Bongo-Seakhoa/mql5_ea.git                           mql5_ea

# Category 2: XAUUSD / Gold specific
clone xauusd-gold   https://github.com/ilahuerta-IA/backtrader-pullback-window-xauusd.git  backtrader-pullback-window-xauusd
clone xauusd-gold   https://github.com/zero-was-here/tradingbot.git                        tradingbot
clone xauusd-gold   https://github.com/P1Piyush/XAUUSD-Trading-Bots.git                    XAUUSD-Trading-Bots
clone xauusd-gold   https://github.com/RobertN1D/XAUUSD-GOLD-SCALPER-MT5-EA-FREE-SOURCE-CODE.git XAUUSD-GOLD-SCALPER-MT5-EA
clone xauusd-gold   https://github.com/thunderstrike668/forex-c15-trader-strategy-mt4.git forex-c15-trader-strategy-mt4
clone xauusd-gold   https://github.com/lightningfast66/forex-stgfx-advanced-strategy-mt4.git forex-stgfx-advanced-strategy-mt4
clone xauusd-gold   https://github.com/lightningfast66/forex-prime-trx-mt4-strategy.git    forex-prime-trx-mt4-strategy
clone xauusd-gold   https://github.com/itsmustafa119/structure-scope.git                   structure-scope
clone xauusd-gold   https://github.com/tensecrocodile/xauusd-trading-strategy.git          xauusd-trading-strategy

# Category 3: General quant / backtesting frameworks
clone quant-frameworks https://github.com/mementum/backtrader.git                          backtrader
clone quant-frameworks https://github.com/vnpy/vnpy.git                                    vnpy
clone quant-frameworks https://github.com/fasiondog/hikyuu.git                             hikyuu
clone quant-frameworks https://github.com/coding-kitties/investing-algorithm-framework.git investing-algorithm-framework
clone quant-frameworks https://github.com/51bitquant/howtrader.git                         howtrader

echo "=== DONE cloning ==="
