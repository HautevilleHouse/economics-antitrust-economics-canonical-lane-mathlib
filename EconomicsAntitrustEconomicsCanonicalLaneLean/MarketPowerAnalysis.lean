import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MarketPowerAnalysis where
  marketConcentration : Float
  entryBarriers : Prop
  priceAboveMarginalCost : Float
  elasticity : Float
  profitMargins : Float

structure MarketPowerEvidence (M : MarketPowerAnalysis) where
  concentrationCheck : M.marketConcentration > 0.5
  priceCostMarginCheck : M.priceAboveMarginalCost > 0.0
  elasticityCheck : M.elasticity < 1.0

def MarketPowerClosed (M : MarketPowerAnalysis) : Prop :=
  M.marketConcentration > 0.5 ∧ M.priceAboveMarginalCost > 0.0 ∧ M.elasticity < 1.0

theorem market_power_closed_from_evidence (M : MarketPowerAnalysis) (E : MarketPowerEvidence M) : MarketPowerClosed M := by
  exact And.intro E.concentrationCheck (And.intro E.priceCostMarginCheck E.elasticityCheck)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse