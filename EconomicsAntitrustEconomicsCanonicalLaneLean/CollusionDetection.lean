import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure CollusionEvidence where
  parallelPricingPatterns : Prop
  profitRatesAboveCompetitive : Prop
  marketAllocationSignals : Prop
  communicationTraces : Prop

structure CollusionCase where
  evidence : CollusionEvidence
  marketStructureFavorable : Prop
  plusFactors : Prop
  legalStandardMet : Prop

structure CollusionEvidenceClosed (C : CollusionCase) : Prop :=
  C.evidence.parallelPricingPatterns ∧
  C.evidence.profitRatesAboveCompetitive ∧
  C.evidence.marketAllocationSignals ∧
  C.evidence.communicationTraces

theorem collusion_case_evidence_closed (C : CollusionCase) :
    CollusionEvidenceClosed C := by
  exact And.intro C.evidence.parallelPricingPatterns
    (And.intro C.evidence.profitRatesAboveCompetitive
      (And.intro C.evidence.marketAllocationSignals C.evidence.communicationTraces))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse