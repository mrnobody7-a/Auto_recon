

---

## 📘 `README.md` for GitHub

````markdown
# 🔍 Network Scanner (Bash)

A professional, modular, and user-friendly **network scanning toolkit** built in pure Bash.  
Supports both **interactive** and **CLI-based scans**, along with optional **HTML reporting**.

---

## 🧰 Features

- 🧠 Intelligent Host Discovery
- 🌐 Network-wide Port Scanning
- 🔍 Service & Version Detection
- 🧬 OS Fingerprinting
- 🔥 Vulnerability Scanning (Nmap NSE)
- 📡 ICMP Ping Sweeps
- 🛠 Helper Tools: `nslookup`, `traceroute`, `whois`
- 📊 Raw and Optional HTML Reports
- 📁 Organized output & logs by timestamp
- 📜 MIT Licensed – Open source & extensible

---

## 🚀 Installation

### 🔧 Dependencies

- [`nmap`](https://nmap.org/)
- `bash` (>= 4.0)
- *(Optional)* `xsltproc` for HTML report generation

Install via:
```bash
sudo apt install nmap xsltproc traceroute whois
````

---

## ⚙️ Usage

### 🖥️ Interactive Mode

```bash
./scanner.sh
```

> Launches a menu-based interface for scan selection.

---

### 💻 CLI Mode

```bash
./scanner.sh --scan port_scan --target 192.168.1.1
```

Available scan types:

* `port_scan`
* `version_detection`
* `os_detection`
* `vuln_scan`
* `ping_sweep`

---

## 📂 Directory Structure

```
network-scanner/
├── scanner.sh             # Main entry point
├── core/                  # Engine, logger, utils, config
├── modules/               # Scan modules (host/network)
│   └── network_scan/      # Sub-scans
├── helpers/               # Extra recon tools
├── logs/                  # Raw logs
├── reports/               # HTML reports (if selected)
├── LICENSE                # MIT License
└── README.md              # You're here!
```

---

## 📊 Reports

Upon scan completion, you'll be asked:

```
Choose output format:
1. Raw only
2. Raw + HTML
```

If selected, HTML reports are saved under `reports/` using `xsltproc`.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
Feel free to use, modify, and contribute!

---

## 🤝 Contributions

Got ideas for new scans or integrations?
Fork the repo, add your changes, and send a pull request! 🧑‍💻

---

## 👤 Author

Created by \[Abhishek Maurya] 
