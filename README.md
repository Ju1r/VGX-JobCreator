# VGX-JobCreator 🚀

VGX-JobCreator is a **powerful and modern Job Management System** for FiveM servers using **QBCore**.  
It allows server administrators to **create, edit, assign, and delete jobs in-game** with a clean UI, full control, and advanced logging.

Designed for **performance, clarity, and scalability**, VGX-JobCreator removes the need for manual job edits or server restarts.

---

## ✨ Key Features
- 🧩 **In-Game Job Creation & Editing**
- 🎨 **Modern UI **
- 🌍 **Arabic & English support**
- 🧠 **Real-time job sync (no restart required)**
- 🔐 **Permission-based admin actions**
- 📊 **Detailed Discord Logs**
  - Separate embeds per action
  - Old vs New comparison for edits
  - Thumbnails, timestamps, and colors
- ⚡ **Optimized & lightweight (low ms usage)**

---


## VERY IMPORTANT
[1] - Go to your core framework resource: (qb-core)
```lua
qb-core/server/player.lua
```
[2] - Search for the job setup block inside the file, such as:
```lua
PlayerData.job and PlayerData.job.name ~= nil and PlayerData.job.grade and PlayerData.job.grade.level ~= nil
```
[3] - Add the following code directly below the job grade initialization:
```lua
if QBCore.Shared.Jobs[PlayerData.job.name] then
    local jobInfo = QBCore.Shared.Jobs[PlayerData.job.name]
    local gradeLevel = tostring(PlayerData.job.grade.level)
    if not jobInfo.grades[gradeLevel] then
        gradeLevel = "0"
        PlayerData.job.grade = {level = 0,name = jobInfo.grades["0"].label or "Recruit"}
        PlayerData.job.payment = jobInfo.grades["0"].payment or PlayerData.job.payment
    else
        PlayerData.job.grade.name = jobInfo.grades[gradeLevel].label
    end
end
```
[4] - After saving the file, restart your server or the core resource
---

## 🛠️ Supported Actions
- Create Jobs
- Edit Jobs (with old/new data tracking)
- Delete Jobs
- Assign Jobs to Players
- Manage Grades dynamically

---

## 📡 Discord Integration
Every admin action is logged with:
- Action-specific embeds
- Arabic / English auto language
- Thumbnails per action
- Accurate timestamps

---

## 📦 Requirements
- QBCore
- oxmysql
- FiveM Server (latest recommended)

---

## 👨‍💻 Developer
**Just.A**  
🔗 Discord: https://discord.gg/hnucPvSRHa

---

> VGX-JobCreator is built for servers that want **professional administration tools** without complexity.
