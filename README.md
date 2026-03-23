# java-Project

## How to run: java-project (folder) -> Lost and found application -> click run.vbs(to easily run the program)

---

# 🔍 Lost & Found Application

> A centralized Java system for reporting and recovering misplaced items — no middlemen, no noticeboards, no confusion.

![Java](https://img.shields.io/badge/Java-OOP-orange?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![Auth](https://img.shields.io/badge/Auth-None%20(Public%20Access)-red?style=flat-square)

---

## 01 — What is this?

A Java application built to replace the chaos of scattered, untracked lost-and-found systems. Whether it's a misplaced ID card or a forgotten bag, this tool gives you a single place to log it, search for it, and close the loop.

Every item gets a record. Every record is searchable. No config, no clutter.

> ⚠️ **No authentication in this version.** Anyone running the app can view and add entries. User login/signup is on the roadmap.

---

## 02 — What it does

| Feature | Description |
|---|---|
| 📤 Report Lost | Log item name, location, date & description |
| 📥 Report Found | Submit a found item so others can claim it |
| 🔍 Search | Find entries by keyword, category, or location |
| 📋 Browse All | View every active listing in one place |
| 🗑️ Resolve & Remove | Mark items as recovered and clear the list |
| ⚡ Zero Setup | No database, no config — just compile and run |

---

## 03 — Stack

```
Language   →  Java
Paradigm   →  Object-Oriented Programming
Storage    →  In-memory (ArrayList / HashMap)
Tools      →  Git, GitHub
```

---

## 04 — Project layout

```
java-Project/
└── Lost and found application/
    ├── src/
    │   ├── models/       # LostItem.java, FoundItem.java
    │   ├── logic/        # Search, CRUD operations
    │   ├── ui/           # Console interface
    │   └── Main.java     # Entry point
    └── README.md
```

---

## 05 — Get it running

```bash
# Prerequisites: Java JDK 8+

git clone https://github.com/Namanshoo/java-Project.git
cd java-Project/Lost\ and\ found\ application/src
javac Main.java && java Main
```


---

## Contributing

1. Fork the repo
2. Create a branch → `git checkout -b feature/your-idea`
3. Commit → `git commit -m "Add: your feature"`
4. Push → `git push origin feature/your-idea`
5. Open a Pull Request

---


