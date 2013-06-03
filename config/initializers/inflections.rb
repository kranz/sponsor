# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'area_territoriale', 'aree_territoriali'
   inflect.irregular 'azione', 'azioni'
   inflect.irregular 'banca', 'banche'
   inflect.irregular 'contributo', 'contributi'
   inflect.irregular 'documento', 'documenti'
   inflect.irregular 'evento', 'eventi'
   inflect.irregular 'filiale', 'filiali'
   inflect.irregular 'provincia', 'province'
   inflect.irregular 'posizione', 'posizioni'
   inflect.irregular 'regione', 'regioni'
   inflect.irregular 'richiedente', 'richiedenti'
   inflect.irregular 'stato_contributo', 'stati_contributo'
   inflect.irregular 'tipo_azione', 'tipi_azione'
   inflect.irregular 'tipo_contributo', 'tipi_contributo'
   inflect.irregular 'tipo_documento', 'tipi_documento'
   inflect.irregular 'tipo_evento', 'tipi_evento'
   inflect.irregular 'valuta', 'valute'
#   inflect.uncountable %w( fish sheep )
end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
