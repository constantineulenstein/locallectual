require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "friendrequest" do
    mail = UserMailer.friendrequest
    assert_equal "Friendrequest", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "transaction" do
    mail = UserMailer.transaction
    assert_equal "Transaction", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
