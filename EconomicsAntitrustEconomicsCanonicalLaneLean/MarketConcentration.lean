import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MarketConcentrationPackage where
  herfindahlHirschmanIndex : Type u
  concentrationRatio : Type v
  marketShares : Type w
  hhiThresholdsDefined : Prop
  crDefined : Prop
  marketSharesSumToOne : Prop
  hhiComputed : Prop
  crComputed : Prop

structure MarketConcentrationEvidence (M : MarketConcentrationPackage) where
  hhiThresholdsDefinedClosed : M.hhiThresholdsDefined
  crDefinedClosed : M.crDefined
  marketSharesSumToOneClosed : M.marketSharesSumToOne
  hhiComputedClosed : M.hhiComputed
  crComputedClosed : M.crComputed

def MarketConcentrationClosed (M : MarketConcentrationPackage) : Prop :=
  M.hhiThresholdsDefined ∧ M.crDefined ∧ M.marketSharesSumToOne ∧ M.hhiComputed ∧ M.crComputed

theorem market_concentration_closed_from_evidence (M : MarketConcentrationPackage) (E : MarketConcentrationEvidence M) : MarketConcentrationClosed M := by
  exact And.intro E.hhiThresholdsDefinedClosed
    (And.intro E.crDefinedClosed
      (And.intro E.marketSharesSumToOneClosed
        (And.intro E.hhiComputedClosed E.crComputedClosed)))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse
