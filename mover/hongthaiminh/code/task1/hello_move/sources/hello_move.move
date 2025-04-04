module hello_move::hello {

    use sui::object::{Self, UID};
    use std::string::{Self, String};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;

    public struct Hello_hongthaiminh has key {
    id: UID,
    name: String,
    }

    public entry fun say_hello_to_hongthaiminh(ctx: &mut TxContext) {
        let hello_world = Hello_hongthaiminh {
        id: object::new(ctx),
        name: string::utf8(b"Hello Hong Thai Minh"),
    };
        transfer::transfer(hello_world, tx_context::sender(ctx));
    }
}
