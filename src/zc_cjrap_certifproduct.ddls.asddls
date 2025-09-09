@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_CJRAP_CERTIFPRODUCT
  as projection on ZI_CJRAP_CERTIFPRODUCT
{
  key CertUuid,
      Matnr,
      Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      LocalLastChangedAt,
      Icon,
      /* Associations */
      _Prod,
      _Stats: redirected to composition child ZC_CJRAP_CERTIFSTPRODUCT
}
