port = 'COM3';
baudrate = 9600;
cmd = 'n';

arduino = serialport(port, baudrate);
% fopen(arduino);

scanData = zeros(70, 40, 'int16');

while cmd ~= 'x'
    if cmd == 'y'
        write(arduino, 3, "int16");
        flush(arduino);
        for i = 1:70
            while s.BytesAvailable < 80; end
            recieved_data = read(arduino, 40, 'int16');
            scanData(i, :) = recieved_data;
        end
        cmd = 'n';
    end
end

fclose(arduino);
delete(arduino)