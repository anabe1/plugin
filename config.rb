AppConfig[:db_url] = "jdbc:mysql://mysql:3306/archivesspacedb?user=as&password=q14Qqd3fRlNUWF3LtVVz5ur43OD4z5u8&useUnicode=true&characterEncoding=UTF-8"
AppConfig[:frontend_proxy_url] = 'https://archives.lib.cuhk.edu.hk/sandbox/staff'
AppConfig[:public_proxy_url] = 'https://archives.lib.cuhk.edu.hk/sandbox'
AppConfig[:oai_proxy_url] = 'https://archives.lib.cuhk.edu.hk/sandbox/oai'

AppConfig[:enable_solr] = false
AppConfig[:solr_url] = "http://solr:8983/solr/archivesspace"

AppConfig[:frontend_log_level] = "error"
AppConfig[:backend_log_level] = "error"
AppConfig[:pui_log_level] = "error"
AppConfig[:indexer_log_level] = "error"

#AppConfig[:plugins] = ['local',  'lcnaf', 'cuhk-library']
AppConfig[:plugins] = ['local',  'lcnaf', 'cuhk-library','plugin202410']

AppConfig[:report_page_layout] = "A4"
AppConfig[:report_pdf_font_paths] = proc { [
      "#{AppConfig[:public_proxy_url]}/assets/fonts/NotoSans/NotoSansCJKtc-Regular.otf",
      "#{AppConfig[:public_proxy_url]}/assets/fonts/NotoSans/NotoSansCJKsc-Regular.otf",
      "#{AppConfig[:public_proxy_url]}/assets/fonts/NotoSans/NotoSansCJKjp-Regular.otf",
      "#{AppConfig[:public_proxy_url]}/assets/fonts/NotoSans/NotoSansCJKkr-Regular.otf"
] }

AppConfig[:pui_email_enabled] = true
AppConfig[:pui_email_delivery_method] = :sendmail
AppConfig[:pui_email_sendmail_settings] = {
  location: '/usr/sbin/sendmail',
  arguments: '-i'
}
AppConfig[:pui_email_perform_deliveries] = true
AppConfig[:pui_email_raise_delivery_errors] = true

#Global settings not work, so enable here
AppConfig[:pui_hide] = {}
AppConfig[:pui_hide][:repositories] = false
AppConfig[:pui_hide][:resources] = false
AppConfig[:pui_hide][:digital_objects] = true
AppConfig[:pui_hide][:accessions] = true
AppConfig[:pui_hide][:subjects] = false
AppConfig[:pui_hide][:agents] = false
AppConfig[:pui_hide][:classifications] = false
AppConfig[:pui_hide][:search_tab] = false
