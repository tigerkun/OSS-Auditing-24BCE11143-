# OSS Audit — Git Version Control System

- **Course:** Open Source Software (NGMC)
- **Project:** OSS Capstone — Comprehensive Open Source Audit
- **Lead Developer:** Tejas Gaur
- **Registration No:** 24BCE11143
- **Repository:** oss-audit-git-vcs

---

## Project Overview

This repository contains a deep-dive audit of **Git**, the industry-standard distributed version control system. Developed by Linus Torvalds in 2005, Git revolutionized how developers collaborate. This audit explores its architectural origins, the implications of the GPL v2 license, and its operational footprint on Linux environments compared to proprietary solutions.

In addition to the theoretical audit, this project includes a suite of five Bash utility scripts designed to demonstrate practical Linux system administration and shell scripting proficiency.

---

## Repository Structure

| File | Functionality |
|------|-------------|
| `sys_report.sh` | Generates a system identity dashboard with kernel and user details. |
| `pkg_inspector.sh` | Validates FOSS package installations and provides metadata. |
| `dir_auditor.sh` | Iterates through core directories to audit disk usage and permissions. |
| `log_parser.sh` | Performs frequency analysis on log files based on user-defined keywords. |
| `manifesto_gen.sh` | Interactive CLI tool to generate a personalized FOSS philosophy statement. |
| `README.md` | Project documentation and execution guide. |

*Note: The comprehensive technical report (PDF) is hosted on the internal university portal.*

---

## Execution Guide

### Initial Setup
Ensure all utility scripts have the necessary execution permissions before running:

Module 1: System Identity Dashboard
Function: Extracts and formats host telemetry including Distro info, kernel version, active user, and uptime.
Logic: Implements command substitution, environment variables, and conditional formatting.

Run:

Bash
./sys_report.sh
Module 2: FOSS Package Inspector
Function: A diagnostic tool that checks for Git (or any specified package) and uses a case logic gate to return package descriptions.
Logic: Utilizes positional parameters $1, which commands, and awk for string parsing.

Run:

Bash
# Default check (Git)
./pkg_inspector.sh

# Target specific packages
./pkg_inspector.sh python3
./pkg_inspector.sh apache2
Module 3: Disk & Permission Auditor
Function: Scans a predefined list of critical Linux system paths (/etc, /var/log, /usr/bin, etc.) to report ownership and storage consumption.
Logic: Employs for loops, du -sh for human-readable sizing, and printf for tabular alignment.

Run:

Bash
./dir_auditor.sh
Module 4: Log Frequency Analyzer
Function: Streams a log file line-by-line to count occurrences of specific status codes or errors.
Logic: Uses a while read loop and incrementing counters for high-performance log processing.

Run:

Bash
# Example: Search for "ERROR" in syslog
./log_parser.sh /var/log/syslog ERROR
Module 5: Open Source Manifesto Generator
Function: An interactive module that captures user input to build a structured .txt file representing the user's FOSS stance.
Logic: String concatenation, interactive read prompts, and file redirection.

Run:

Bash
./manifesto_gen.sh
Environment Requirements
OS: Any Unix-like environment (Ubuntu, Fedora, Arch, macOS with Bash).

Shell: Bash 4.0 or above.

Permissions: Read access to /var/log is required for the Log Frequency Analyzer.```bash
chmod +x *.sh
