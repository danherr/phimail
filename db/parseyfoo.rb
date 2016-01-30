require('byebug')
string = IO.read("./pg1643.txt")

array = string.split("\r\n\r\n")
$increments = ['years', 'months', 'weeks','days', 'hours', 'minutes', 'seconds']
$time_idx = 0
$time_num = 10.0
$num = 3
header = <<-HEADER

meno = User.create({fname: "Meno", lname:"of Thessalonia", username: "meno", pass: "aB345678"})
soc = User.find_by_username('daimonic')

con#{$num} = soc.conversations.create(title: 'A Question, Socrates')

HEADER

array = array.map! do |message|


  temp = message.split(':', 2)
  name = temp[0]
  message = temp[1]

  if message

    if Random.rand > 0.9
      min_message = "\n con#{$num}.update(message_timestamp: #{$time_num.floor}.#{$increments[$time_idx]}.ago) \n"
      title = message.chars.take(30).join
      $num = $num + 1
      min_message = "#{min_message}\n con#{$num} = soc.conversations.create(title: \"#{title}\" ) \n\n"
      message =  min_message + "body_str = <<-BODY \n" + message
    else
      message = "body_str = <<-BODY \n" + message
    end


    if $time_idx == 6
      $time_num -= (Random.rand)/10 if $time_num > 10
    else
      $time_num -= (Random.rand)/10
      if $time_num <= 1
        $time_num = 12
        $time_idx += 1
      end
    end


    if name == "SOCRATES"
      seed = "con#{$num}.messages.create({\n"
      seed += <<-soc
    source_address: "daimonic#{'#{EMAIL_SIGNATURE}'}",
    target_address: "meno#{'#{EMAIL_SIGNATURE}'}",
    body: body_str,
    updated_at: #{$time_num.floor}.#{$increments[$time_idx]}.ago,
    created_at: #{$time_num.floor}.#{$increments[$time_idx]}.ago
    })
  soc

    elsif name == "MENO"
      seed = "con#{$num}.messages.create({\n"
      seed += <<-meno
    source_address: "meno#{'#{EMAIL_SIGNATURE}'}",
    target_address: "daimonic#{'#{EMAIL_SIGNATURE}'}",
    body: body_str,
    updated_at: #{$time_num.floor}.#{$increments[$time_idx]}.ago,
    created_at: #{$time_num.floor}.#{$increments[$time_idx]}.ago
    })
  meno

      message.sub!('MENO:', "body_str = <<-BODY \n")
    end



    message = message.concat("\nBODY\n\n")
    if seed
      message = message.concat(seed)
    else
      message = min_message
    end
    message
  end
end

string = array.join("\n\n")

File.write("./meno.rb", header + string)
