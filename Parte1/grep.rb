args = ARGV

arg_n = false
arg_l = false
arg_i = false
arg_v = false
arg_x = false 

cadena = ""
i = 0
for arg in args
    if arg[0] == "-"
        break
    end
    cadena += arg
    cadena += " "
    i += 1
end
cadena = cadena[0..cadena.length-2]
args = args[i..args.length-1]
i = 0
for arg in args
    if arg == "-n"
        arg_n = true
    elsif arg == "-l"
        arg_l = true
    elsif arg == "-i"
        arg_i = true
    elsif arg == "-v"
        arg_v = true
    elsif arg == "-x"
        arg_x = true
    elsif arg[0] == "-"
        puts "grep: -'#{arg[1]}' no existe"
        exit
    else
        break
    end
    i += 1
end
files = []
for j in i..args.length-1
    files.push(args[j])
end
if files == nil || files.length == 0
    puts "grep: falta un argumento de fichero"
    exit
end

name_file = false
if files.length > 1
    name_file = true
end
files_l = {}
for file in files
    if !File.file?(file)
        puts "grep: #{file} no es un fichero"
        exit
    end
    actual_file = File.open(file)
    number_line = 0
    for line in actual_file.readlines
        number_line += 1
        if arg_i
            line = line.downcase
            cadena = cadena.downcase
        end
        if arg_l && arg_v
            if line !~ /#{cadena}/
                files_l.store(file, true)
            end
            next
        elsif arg_l && !arg_v
            if line =~ /#{cadena}/
                files_l.store(file, true)
            end
            next
        end
        if arg_x && !arg_v
            if line == cadena
                if arg_n
                    if name_file
                        puts "#{file} #{number_line}:#{line}"
                    else
                        puts "#{number_line}:#{line}"
                    end
                else
                    if name_file
                        puts "#{file}:#{line}"
                    else
                        puts line
                    end
                end
            end
            next
        elsif arg_x && arg_v
            if line != cadena
                if arg_n
                    if name_file
                        puts "#{file} #{number_line}:#{line}"
                    else
                        puts "#{number_line}:#{line}"
                    end
                else
                    if name_file
                        puts "#{file}:#{line}"
                    else
                        puts line
                    end
                end
            end
            next
        end
        if arg_v
            if line !~ /#{cadena}/
                if arg_n
                    if name_file
                        puts "#{file} #{number_line}:#{line}"
                    else
                        puts "#{number_line}:#{line}"
                    end
                else
                    if name_file
                        puts "#{file}:#{line}"
                    else
                        puts line
                    end
                end
            end
            next
        end
        if line =~ /#{cadena}/
            if arg_n
                if name_file
                    puts "#{file} #{number_line}:#{line}"
                else
                    puts "#{number_line}:#{line}"
                end
            else
                if name_file
                    puts "#{file}:#{line}"
                else
                    puts line
                end
            end
            next
        end
    end
end
if arg_l
    for file in files_l.keys
        puts file
    end
end

