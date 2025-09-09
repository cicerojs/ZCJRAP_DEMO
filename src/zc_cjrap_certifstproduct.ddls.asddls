@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_CJRAP_CERTIFSTPRODUCT
  as projection on ZI_CJRAP_CERTIFSTPRODUCT
{
  key StateUuid,
      CertUuid,
      Matnr,
      Description,
      Version,
      Status,
      StatusOld,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Certif : redirected to parent ZC_CJRAP_CERTIFPRODUCT
}
