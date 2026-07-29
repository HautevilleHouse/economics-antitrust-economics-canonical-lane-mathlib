import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure AntitrustRemedyPackage where
  structuralRemedy : Prop
  behavioralRemedy : Prop
  remedyProportional : Prop
  remedyEffective : Prop

structure AntitrustRemedyEvidence (R : AntitrustRemedyPackage) where
  structuralRemedyImposed : R.structuralRemedy
  behavioralRemedyImposed : R.behavioralRemedy
  remedyProportionalHeld : R.remedyProportional
  remedyEffectiveOutcome : R.remedyEffective

def AntitrustRemedyClosed (R : AntitrustRemedyPackage) : Prop :=
  R.structuralRemedy ∧ R.behavioralRemedy ∧ R.remedyProportional ∧ R.remedyEffective

theorem antitrust_remedy_closed (R : AntitrustRemedyPackage) (E : AntitrustRemedyEvidence R) : AntitrustRemedyClosed R :=
  by
    exact And.intro E.structuralRemedyImposed
      (And.intro E.behavioralRemedyImposed
        (And.intro E.remedyProportionalHeld E.remedyEffectiveOutcome))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse