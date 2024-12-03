import UIKit


class Computer {
   private var brand: String
   private var processor: String
   private var ram: Int

    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }

    func displaySpecs() {
        print("Brand: \(brand),","Processor: \(processor),",("RAM: \(ram) GB"))
    }
}


class Laptop: Computer {
   private var isTouchscreen: Bool

    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }

    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(isTouchscreen ? "Yes" : "No")")
    }
}


class Desktop: Computer {
   private var hasDedicatedGPU: Bool

    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }

    override func displaySpecs() {
        super.displaySpecs()
        print("Dedicated GPU: \(hasDedicatedGPU ? "Yes" : "No")")
    }
}

class Server: Computer {
   private var rackUnits: Int

    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }

    override func displaySpecs() {
        super.displaySpecs()
        print("Rack Units: \(rackUnits)")
    }
}


let myLaptop = Laptop(brand: "Apple", processor: "M1 Pro", ram: 16, isTouchscreen: false)
let myDesktop = Desktop(brand: "Dell", processor: "Intel Core i7", ram: 32, hasDedicatedGPU: true)
let myServer = Server(brand: "HP", processor: "AMD EPYC", ram: 128, rackUnits: 4)

print("Laptop Specifications:")
myLaptop.displaySpecs()
print("\nDesktop Specifications:")
myDesktop.displaySpecs()
print("\nServer Specifications:")
myServer.displaySpecs()

