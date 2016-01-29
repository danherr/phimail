require('byebug')
string = IO.read("./pg1643.txt")

array = string.split("\r\n\r\n")

$num = 3

array = array.map! do |message|


  if message.start_with?("SOCRATES:")
    seed = "con#{$num}.messages.create({\n"
    seed += <<-soc
  source_address: "daimonic#{'#{EMAIL_SIGNATURE}'}",
  target_address: "meno#{'#{EMAIL_SIGNATURE}'}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })
soc

    message.sub!("SOCRATES:", "body_str = <<-BODY \n")
  elsif message.start_with?("MENO:")
    seed = "con#{$num}.messages.create({\n"
    seed += <<-meno
  source_address: "meno#{'#{EMAIL_SIGNATURE}'}",
  target_address: "daimonic#{'#{EMAIL_SIGNATURE}'}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })
meno

    message.sub!('MENO:', "body_str = <<-BODY \n")
  end

  message = message.concat("\nBODY\n\n")
  if seed
    message = message.concat(seed)
  else
    message = ""
  end
  if Random.rand < 0.7
    $num = $num + 1
    message += "\n\n con#{$num} = soc.conversations.create() \n\n"
  end
  message
end

string = array.join("\n\n")

File.write("./output.rb", string)
