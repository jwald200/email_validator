require "spec_helper"
include EmailValidator
# /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

# Here is what this gem considers valid
# - Local-part (mailbox)
#   - may contain alphanumeric chars + special chars `!#$%&'*+-/=?^_`{|}~;`
#   - may not contain those chars `(),:;<>@[\]` and spaces
# - Domain name
#   - may contain alphanumeric chars and hyphens
#   - must have a dod and only one.
#   - must have at least 2 alphabet chars for the top-level domain. for example (co, com, org)
RSpec.describe EmailValidator do
  describe '#valid_email?' do
    context 'valid' do
      it 'returns true' do
        expect(valid_email? 'email@email.com').to be true
      end
    end

    context 'invalid' do
      context 'invalid local-part' do
        '(),:;<>@[\] '.chars do |special_char|
          it 'does not allow #{special_char} in Local-part' do
            expect(valid_email? "#{special_char}go@email.com").to be false
          end
        end
      end

      context 'invalid domain' do

        "(),:;<>@[\] ".chars do |invalid_char|
          it "does not allow #{invalid_char} in domain part" do
            expect(valid_email? "go@ema#{invalid_char}il.com").to be false
          end
        end

        it 'must have a dot before top-level-domain' do
          expect(valid_email? "go@emailcom").to be false
        end

        it 'must have at least two chars after the dot' do
          expect(valid_email? "go@email.c").to be false
        end
      end

    end
  end

  it "has a version number" do
    expect(EmailValidator::VERSION).not_to be nil
  end
end
