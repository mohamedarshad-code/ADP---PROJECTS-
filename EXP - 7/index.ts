/**
 * EXP - 7 | PREMIUM TYPESCRIPT OOP ARCHITECTURE
 * Demonstrating Inheritance, Encapsulation, and Polymorphism.
 */

// 1. Definition of an Abstract Base Class (Abstraction)
abstract class GlobalSystemEntity {
    protected id: string;
    private createdAt: Date;

    constructor(id: string) {
        this.id = id;
        this.createdAt = new Date();
    }

    // Abstract method to be implemented by child classes
    abstract executeProtocol(): void;

    // Encapsulated getter for metadata
    public getMetadata(): string {
        return `[ENTITY_ID: ${this.id}] | [INITIALIZED: ${this.createdAt.toISOString()}]`;
    }
}

// 2. Inheritance: Child Class for Digital Assets
class DigitalAsset extends GlobalSystemEntity {
    private value: number;
    private currency: string;

    constructor(id: string, value: number, currency: string) {
        super(id);
        this.value = value;
        this.currency = currency;
    }

    // Implementing abstract method
    public executeProtocol(): void {
        console.log(`📡 DISPATCHED: Asset ${this.id} valued at ${this.value}${this.currency}`);
    }

    // Encapsulation Check
    public updateValue(newValue: number): void {
        if (newValue > 0) {
            this.value = newValue;
            console.log(`✅ UPDATE: Asset ${this.id} recalculated.`);
        } else {
            console.error(`❌ FAULT: Invalid asset valuation.`);
        }
    }
}

// 3. Inheritance: Child Class for Network Nodes
class NetworkNode extends GlobalSystemEntity {
    private protocol: string;
    private latency: number;

    constructor(id: string, protocol: string, latency: number) {
        super(id);
        this.protocol = protocol;
        this.latency = latency;
    }

    // Polymorphism: Unique implementation of executeProtocol
    public executeProtocol(): void {
        console.log(`🔌 HANDSHAKE: Node ${this.id} active on ${this.protocol} with ${this.latency}ms ping.`);
    }
}

/**
 * 4. DEMONSTRATION OF POLYMORPHISM
 * We can treat different entities as the base type 'GlobalSystemEntity'.
 */
const systemRegistry: GlobalSystemEntity[] = [
    new DigitalAsset("BTC_NODE_01", 64000, "USD"),
    new NetworkNode("SOL_TERMINAL_X", "SOL-GATEWAY", 12),
    new DigitalAsset("ETH_LIQUIDITY_HUB", 3200, "USD")
];

console.log("--- STARTING PREMIUM OOP SYSTEM DIAGNOSTICS ---\n");

systemRegistry.forEach(entity => {
    console.log(entity.getMetadata());
    entity.executeProtocol();
    console.log("------------------------------------------");
});

// Targeted interaction with a specific type
const mainAsset = new DigitalAsset("LUMINA_TOKEN", 150000, "USD");
mainAsset.updateValue(165000);
mainAsset.executeProtocol();
