# 🔐 linux-password-generator

A simple and extendable password generator written in Bash for Linux.

## 🚀 Features

- Generate secure random passwords
- Set custom password length
- Generate multiple passwords at once
- Option to disable symbols (simple mode)
- CLI-friendly usage

## 📦 Available Versions

### 🔸 Version 1.0.0

> File: `passgen.sh`

A basic password generator using `/dev/urandom`.

#### 📌 Usage:
```bash
./passgen.sh
```

---


---

### 🔸 Version 1.1.0

> File: `versions/passgen-v2.sh`

Supports custom length, multiple password generation, and simple mode.

#### 📌 Usage:
```bash
./passgen-v2.sh -l 20 -n 3
./passgen-v2.sh --length 12 --number 5 --simple

```

ℹ️ Help:
```
./passgen-v2.sh --help
```
---
---

### 🔸 Version 1.2.0

> File: `versions/passgen-v3.sh`

Adds support for saving passwords to a file using `--output` option.

#### 📌 Usage:
```bash
./passgen-v3.sh --length 16 --number 3 --output saved_passwords.txt
```

This will generate 3 passwords of length 16 and save them to the file saved_passwords.txt.

ℹ️ Help:
```
./passgen-v3.sh --help
```


---
➡️ [👉 Click here to download the latest release (v1.2.0)](https://github.com/farzan-dev13/linux-password-generator/releases/tag/v1.2.0)
---


📄 License

This project is licensed under the MIT License.
