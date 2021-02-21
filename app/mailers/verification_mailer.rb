class VerificationMailer < ApplicationMailer
    default from: "waki.eug@ko-da.work"

    def send_verification_code(email)
        @email = email
        mail(
            subject: "認証コード", #メールのタイトル
            to: @email.email_address #宛先
        ) do |format|
        format.text
        end
    end
end
