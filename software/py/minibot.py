
import bluetooth as bt
from select import select

class Connection:
    def __init__(self, addr):
        self.mac_addr = addr
        self.socket = bt.BluetoothSocket(bt.RFCOMM)
        self.file = self.socket.makefile()

        try:
            self.socket.connect((addr, 1))
        except:
            raise NameError("Bad bluetooth address: " + addr)

    def send(self, msg):
        self.socket.send(msg)
        self.file.flush()

    def has_data(self):
        return self.socket in select([ self.socket ], [], [], 0)[0]

    def poll(self):
        output = bytes()
        while self.has_data():
            output += self.socket.recv(100)
        return output if len(output) > 0 else None

