import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsAntitrustEconomicsCanonicalLaneLean.MarketConcentration

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MergerReviewPackage {M : MarketConcentrationPackage} (H : MarketConcentrationEvidence M) where
  relevantMarketDefined : Prop
  marketConcentrationBaseline : Prop
  mergerSimulation : Prop
  competitiveEffectAnalysis : Prop
  relevantMarketDefinedClosed : relevantMarketDefined
  marketConcentrationBaselineClosed : marketConcentrationBaseline
  mergerSimulationClosed : mergerSimulation
  competitiveEffectAnalysisClosed : competitiveEffectAnalysis

structure MergerReviewEvidence {M : MarketConcentrationPackage} {H : MarketConcentrationEvidence M} (R : MergerReviewPackage H) where
  relevantMarketDefinedClosed : R.relevantMarketDefined
  marketConcentrationBaselineClosed : R.marketConcentrationBaseline
  mergerSimulationClosed : R.mergerSimulation
  competitiveEffectAnalysisClosed : R.competitiveEffectAnalysis

def MergerReviewClosed {M : MarketConcentrationPackage} {H : MarketConcentrationEvidence M} (R : MergerReviewPackage H) : Prop :=
  R.relevantMarketDefined ∧ R.marketConcentrationBaseline ∧ R.mergerSimulation ∧ R.competitiveEffectAnalysis

theorem merger_review_closed_from_evidence {M : MarketConcentrationPackage} {H : MarketConcentrationEvidence M} (R : MergerReviewPackage H) (E : MergerReviewEvidence R) : MergerReviewClosed R := by
  exact And.intro E.relevantMarketDefinedClosed
    (And.intro E.marketConcentrationBaselineClosed
      (And.intro E.mergerSimulationClosed E.competitiveEffectAnalysisClosed))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse
