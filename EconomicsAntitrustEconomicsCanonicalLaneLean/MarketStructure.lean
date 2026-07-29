import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MarketConcentration where
  herfindahlHirschmanIndex : ℝ
  topFirmShare : ℝ
  entryBarriers : Prop

structure MarketStructurePackage where
  concentration : MarketConcentration
  productMarketDifferentiation : Prop
  networkEffects : Prop
  verticalIntegration : Prop
  homogeneousMarket : Prop

structure MarketStructureEvidence (M : MarketStructurePackage) where
  concentrationClosed : M.concentration.herfindahlHirschmanIndex > 0
  productMarketDifferentiationClosed : M.productMarketDifferentiation
  networkEffectsClosed : M.networkEffects
  verticalIntegrationClosed : M.verticalIntegration
  homogeneousMarketClosed : M.homogeneousMarket

def MarketStructureClosed (M : MarketStructurePackage) : Prop :=
  M.concentration.herfindahlHirschmanIndex > 0 ∧
  M.productMarketDifferentiation ∧
  M.networkEffects ∧
  M.verticalIntegration ∧
  M.homogeneousMarket

theorem market_structure_closed_from_evidence (M : MarketStructurePackage) (E : MarketStructureEvidence M) :
    MarketStructureClosed M := by
  exact And.intro E.concentrationClosed
    (And.intro E.productMarketDifferentiationClosed
      (And.intro E.networkEffectsClosed
        (And.intro E.verticalIntegrationClosed E.homogeneousMarketClosed)))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse