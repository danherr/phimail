require('byebug')
string = IO.read("./pg1643.txt")

array = string.split("\r\n\r\n")

array = array.map! do |message|


  if message.include?("SOCRATES:")
    seed = <<-soc
con.messages.create({
  source_address: "daimonic#{'#{EMAIL_SIGNATURE}'}",
  target_address: "meno#{'#{EMAIL_SIGNATURE}'}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })
soc

    message.sub!("SOCRATES:", "body_str = <<-BODY \n")
  elsif message.include?("MENO:")
    seed = <<-meno
con.messages.create({
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
    byebug
  end
  message
end

string = array.join("\n\n")

File.write("./output.rb", string)
