@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_CJRAP_CERTIFPRODUCT
  as select from ZI_CJRAP_CERTIF
  composition [1..*] of ZI_CJRAP_CERTIFSTPRODUCT as _Stats
  association [1..1] to ZI_CJRAP_PRODUCT         as _Prod on  $projection.Matnr = _Prod.Matnr
                                                          and _Prod.Language    = $session.system_language
  //                                           OU     and _Prod.Language = 'P'
{
  key CertUuid,
      Matnr,
      _Prod.Description as Description,
      // OU    _Prod[ Language = $session.system_language ].Description as Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      'sap-icon://accounting-document-verification' as Icon,

      _Prod,
      _Stats
}
