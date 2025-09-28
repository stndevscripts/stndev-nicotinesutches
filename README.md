🥤 StnDev Nicotine Pouches v1.0 – ESX/OX Free Release

Minimalist, stable and fully configurable nicotine pouch script for ESX/OX servers.
No gimmicks – just a clean, immersive experience for players and developers.

✨ Features
- Use nicotine pouches directly from ox_inventory
- Smooth camera shake effect (customizable recoil)
- Spit out pouch via command or keybind
- Progress bars and notifications with ox_lib
- Optional support for okokNotify
- Fully configurable config.lua (intensity, duration, command, keybind, notifications)
- Multi-language support (CZ/EN)

📁 Structure
shared/ config.lua
client/ client.lua
server/ server.lua
Installation/ images
Installation/ items.lua
fxmanifest.lua
README.md

🔧 Dependencies
- ox_lib
- ox_inventory
- es_extended

🚀 Installation
- Place the resource in:
resources/[local]/stndev_nicotinepouches
- Add to your server.cfg:
ensure stndev_nicotinepouches
- Upload item images into:
ox_inventory/web/images
- Put items into:
ox_inventory/data/items.lua
- Configure config.lua to your liking.

⚠️ WARNING:
Do not modify client.lua or server.lua unless you know exactly what you are doing.
All customization is handled in config.lua.

🧠 Configuration
- Enable/disable /spitpouch command
- Enable/disable keybind (default X)
- Set a custom key
- Adjust shake intensity and duration
- Choose notification type: ox_lib / okokNotify

🧱 License
Free for community use.
Distribution of paid versions prohibited.
Modify, fork, remix – but credit StnDev.

💬 Contact
Discord: https://discord.gg/q2rqUXvuz9

Made with caffeine and precision by StnDev 😈
