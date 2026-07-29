import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure PredatoryPricingPackage where
  costMeasure : Type u
  priceMeasure : Type v
  priceBelowCostDetected : Prop
  recoupmentProbability : Type w
  marketPowerInferred : Prop
  priceBelowCostDetectedClosed : priceBelowCostDetected
  recoupmentProbabilityAssessed : Prop
  recoupmentProbabilityAssessedClosed : recoupmentProbabilityAssessed
  marketPowerInferredClosed : marketPowerInferred

structure PredatoryPricingEvidence (P : PredatoryPricingPackage) where
  priceBelowCostDetectedClosed : P.priceBelowCostDetected
  recoupmentProbabilityAssessedClosed : P.recoupmentProbabilityAssessed
  marketPowerInferredClosed : P.marketPowerInferred

def PredatoryPricingClosed (P : PredatoryPricingPackage) : Prop :=
  P.priceBelowCostDetected ∧ P.recoupmentProbabilityAssessed ∧ P.marketPowerInferred

theorem predatory_pricing_closed_from_evidence (P : PredatoryPricingPackage) (E : PredatoryPricingEvidence P) : PredatoryPricingClosed P := by
  exact And.intro E.priceBelowCostDetectedClosed
    (And.intro E.recoupmentProbabilityAssessedClosed E.marketPowerInferredClosed)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse
