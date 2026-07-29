import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure PriceDiscriminationPackage where
  marketPowerRequirement : Prop
  consumerSegmentation : Prop
  arbitrageConstraints : Prop
  welfareEffects : Prop
  antitrustImplications : Prop

structure PriceDiscriminationEvidence (P : PriceDiscriminationPackage) where
  marketPowerRequirementClosed : P.marketPowerRequirement
  consumerSegmentationClosed : P.consumerSegmentation
  arbitrageConstraintsClosed : P.arbitrageConstraints
  welfareEffectsClosed : P.welfareEffects
  antitrustImplicationsClosed : P.antitrustImplications

def PriceDiscriminationClosed (P : PriceDiscriminationPackage) : Prop :=
  P.marketPowerRequirement ∧ P.consumerSegmentation ∧ P.arbitrageConstraints ∧ P.welfareEffects ∧ P.antitrustImplications

theorem price_discrimination_closed_from_evidence (P : PriceDiscriminationPackage) (E : PriceDiscriminationEvidence P) : PriceDiscriminationClosed P :=
  And.intro E.marketPowerRequirementClosed
    (And.intro E.consumerSegmentationClosed
      (And.intro E.arbitrageConstraintsClosed
        (And.intro E.welfareEffectsClosed E.antitrustImplicationsClosed)))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse