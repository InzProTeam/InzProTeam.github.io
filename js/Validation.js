 function PasswordLength(source, args) {
            if (args.Value.length < 8 || args.Value.length > 30) {
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }
        function IfUpperCase(source, args) {
            var text = args.Value;
            for (let index = 0; index < text.length; index++) {
                var number = parseInt(text.charCodeAt(index));
                if (number >= 65 && number <= 90) {
                    args.IsValid = true;
                    return;
                }

            }
            args.IsValid = false;
        }
        function IfSpecial(source, args) {
            var text = args.Value;
            for (let index = 0; index < text.length; index++) {
                var number = parseInt(text.charCodeAt(index));
                if (number == 33
                    || number >= 35 && number <= 38
                    || number >= 40 && number <= 42
                    || number == 64
                    || number == 94) {
                    args.IsValid = true;
                    return;
                }

            }
            args.IsValid = false;
        }

        function UsernameLength(source, args) {
            if (args.Value.length < 3 || args.Value.length > 40) {
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }

        function IfProhibitedSigns(source, args) {
            var text = args.Value;
            for (let index = 0; index < text.length; index++) {
                var number = parseInt(text.charCodeAt(index));
                if (number == 34
                    || number == 39
                    || number >= 43 && number <= 47
                    || number >= 58 && number <= 63
                    || number >= 91 && number <= 93
                    || number == 95
                    || number == 96
                    || number >= 123 && number <= 126) {
                    args.IsValid = false;
                    return;
                }

            }
            args.IsValid = true;
        }