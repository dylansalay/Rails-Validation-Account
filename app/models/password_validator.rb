class PasswordValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        if value.count("0-9") == 0
            record.errors[attribute] << (options[:message] || "must include a number")
        end
        unless value =~ /[@#$%&*]/
            record.errors[attribute] << (options[:message] || "must include a special character")
        end
    end
end
