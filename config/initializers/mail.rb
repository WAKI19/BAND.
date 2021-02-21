ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'mail47.onamae.ne.jp',
  domain: 'ko-da.work',
  port: 465,
  user_name: 'waki.eug@ko-da.work',
  password: 'Kodai@1927',
  enable_starttls_auto: true
}