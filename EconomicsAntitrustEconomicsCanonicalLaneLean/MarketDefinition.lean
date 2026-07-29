import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure DemandSideSubstitution where
  priceElasticity : ℝ
  crossPriceElasticity : ℝ
  switchingCosts : ℝ
  consumerPreferences : Prop

structure SupplySideSubstitution where
  productionFlexibility : Prop
  entryTiming : ℝ
  sunkCosts : ℝ

structure RelevantMarket where
  productMarket : String
  geographicMarket : String
  demandSide : DemandSideSubstitution
  supplySide : SupplySideSubstitution
  smallButSignificantPriceIncrease : Prop

structure MarketDefinitionClosed (M : RelevantMarket) : Prop :=
  M.demandSide.priceElasticity > 1 ∧
  M.supplySide.entryTiming > 0 ∧
  M.smallButSignificantPriceIncrease

theorem market_definition_closed (M : RelevantMarket) : MarketDefinitionClosed M := by
  repeat' apply And.intro
  · exact M.demandSide.priceElasticity > 1
  · exact M.supplySide.entryTiming > 0
  · exact M.smallButSignificantPriceIncrease

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse