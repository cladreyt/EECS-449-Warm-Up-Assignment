walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker chris_response {
    has value: str;

    can return_message with `root entry {
        report {
            "chris_response": "Hello, " + self.value + "!",
            "other_response": "testing"
        };
    }
}

walker add_numbers {
    has x: int;
    has y: int;

    can return_message with `root entry {
        report {
            "response": self.x + self.y
        };
    }
}