@AbapCatalog.sqlViewName: 'ZJMJ_V_ART_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Artículos Arte'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZJMJ_CDS_ART_001
  as select from zjmj_tab_art
{
  key client as client,
  key id_art as IdArt,
      descr  as Descr,
      descr2 as Descr2,
      color  as Color,
      piezas as Piezas,
      stock  as Stock,
      url    as Url,
      case 
      when stock = 0 then 0
      when stock between 1 and 10 then 1
      when stock between 11 and 99 then 2
      when stock >= 100 then 3
      else 0
      end as status
}
