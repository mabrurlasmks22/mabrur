# 🚢 Crew Manager Compliance v1.0

**Enterprise-Grade Crew Management System** dengan compliance automation untuk **STCW**, **MLC 2006**, dan **OCIMF Audit Ready**.

## 📋 Fitur Utama

### ✅ Core Functionality
- **Dashboard** - KPI real-time crew status & compliance alerts
- **Armada Management** - Multi-ship crew allocation (5 kapal)
- **Crew Database** - 30+ field per crew member (complete profile)
- **Reporting** - Daily crew status changes with audit trail

### 🔒 Compliance & Audit
- **STCW Validation** - Automatic certificate compliance check per role
- **MLC 2006** - Rest hours tracking & violation detection
- **OCIMF Readiness** - Complete audit preparation dashboard
- **Medical Fitness** - Certificate expiry monitoring & alerts

### 📊 Analytics & Export
- Chart.js visualizations (certificate status, crew distribution)
- CSV export untuk semua laporan & compliance data
- Real-time KPI tracking

### 💾 Data & Architecture
- **Offline-First** - localStorage-based, no backend required
- **Single-Page App** - Fast, responsive UI dengan Tailwind CSS
- **Progressive** - Works on mobile, tablet, desktop
- **Persistence** - Auto-save ke browser storage

---

## 🚀 Quick Start

### 1. Lokal Development
```bash
# Clone repository
git clone https://github.com/yourusername/crew-manager-compliance.git
cd crew-manager-compliance

# Jalankan local server
python -m http.server 8000
# atau
npx http-server

# Buka browser
# http://localhost:8000