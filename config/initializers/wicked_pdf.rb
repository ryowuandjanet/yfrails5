# WickedPDF Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `render :pdf` call.
#
# To learn more, check out the README:
#
# https://github.com/mileszs/wicked_pdf/blob/master/README.md

WickedPdf.config = {
  # Path to the wkhtmltopdf executable: This usually isn't needed if using
  # one of the wkhtmltopdf-binary family of gems.

  # for DigitalOcean Linux
  exe_path: '/usr/local/bin/wkhtmltopdf',

  # for windows(company)  
  # exe_path: 'D://OQC/Program_Area/wkhtmltox/bin/wkhtmltopdf.exe'

  # for AWS
  # exe_path: '/home/ubuntu/.rvm/gems/ruby-2.6.5/bin/wkhtmltopdf'


  # exe_path: '/home/ubuntu/.rvm/gems/ruby-2.6.5/bin/wkhtmltopdf',
  #   or
  # exe_path: Gem.bin_path('wkhtmltopdf-binary', 'wkhtmltopdf')

  # Layout file to be used for all PDFs
  # (but can be overridden in `render :pdf` calls)
  # layout: 'pdf.html',
}
