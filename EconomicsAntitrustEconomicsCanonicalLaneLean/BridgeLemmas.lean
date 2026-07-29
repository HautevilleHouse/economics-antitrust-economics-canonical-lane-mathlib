import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion.1 ∧ A.object.conclusion.2

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse