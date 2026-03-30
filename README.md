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

```bash
chmod +x *.sh
