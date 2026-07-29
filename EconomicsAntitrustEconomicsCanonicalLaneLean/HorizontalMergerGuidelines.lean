import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure HorizontalMergerGuidelinesPackage where
  herfindahlHirschmanIndex : Prop
  unilateralEffects : Prop
  coordinatedEffects : Prop
  entryAnalysis : Prop
  efficiencies : Prop
  failingFirmDefense : Prop

structure HorizontalMergerGuidelinesEvidence (G : HorizontalMergerGuidelinesPackage) where
  herfindahlHirschmanIndexClosed : G.herfindahlHirschmanIndex
  unilateralEffectsClosed : G.unilateralEffects
  coordinatedEffectsClosed : G.coordinatedEffects
  entryAnalysisClosed : G.entryAnalysis
  efficienciesClosed : G.efficiencies
  failingFirmDefenseClosed : G.failingFirmDefense

def HorizontalMergerGuidelinesClosed (G : HorizontalMergerGuidelinesPackage) : Prop :=
  G.herfindahlHirschmanIndex ∧ G.unilateralEffects ∧ G.coordinatedEffects ∧ G.entryAnalysis ∧ G.efficiencies ∧ G.failingFirmDefense

theorem horizontal_merger_guidelines_closed_from_evidence (G : HorizontalMergerGuidelinesPackage) (E : HorizontalMergerGuidelinesEvidence G) : HorizontalMergerGuidelinesClosed G :=
  And.intro E.herfindahlHirschmanIndexClosed
    (And.intro E.unilateralEffectsClosed
      (And.intro E.coordinatedEffectsClosed
        (And.intro E.entryAnalysisClosed
          (And.intro E.efficienciesClosed E.failingFirmDefenseClosed))))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse