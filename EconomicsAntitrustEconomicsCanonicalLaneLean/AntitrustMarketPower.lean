import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MarketPowerPackage where
  marketConcentration : ℝ
  herfindahlIndex : ℝ
  priceCostMargin : ℝ
  entryBarriers : Prop

structure MarketPowerEvidence (M : MarketPowerPackage) where
  marketConcentrationComputed : M.marketConcentration = 0.25
  herfindahlAboveThreshold : M.herfindahlIndex > 0.2
  priceCostMarginEvident : M.priceCostMargin > 0.0
  entryBarriersExist : M.entryBarriers

def MarketPowerClosed (M : MarketPowerPackage) : Prop :=
  M.marketConcentration = 0.25 ∧ M.herfindahlIndex > 0.2 ∧ M.priceCostMargin > 0.0 ∧ M.entryBarriers

theorem market_power_closed (M : MarketPowerPackage) (E : MarketPowerEvidence M) : MarketPowerClosed M :=
  by
    exact And.intro E.marketConcentrationComputed
      (And.intro E.herfindahlAboveThreshold
        (And.intro E.priceCostMarginEvident E.entryBarriersExist))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse