# **Automated Git Version Control & Notification Script**

This Bash script monitors a specified file or directory for changes, automatically commits and pushes updates to a GitHub repository, and sends email notifications to collaborators using the SendGrid Email API.

---

## **📌 Features**
✅ Monitors file/directory changes using SHA-256 checksums.  
✅ Automatically commits and pushes changes to a remote GitHub repository.  
✅ Sends real-time email notifications to specified collaborators.  
✅ Configurable settings via `config.cfg`.  
✅ Error handling for Git and SendGrid API failures.  

---

## **⚙️ Prerequisites**
Before running the script, ensure you have the following installed on your system:

### **1️⃣ Required Software**
- **Git** (for version control) → Install via:  
  ```bash
  sudo apt install git  # Linux
  brew install git      # macOS
  ```
- **SendGrid API Key** (for sending email notifications).  
- **`sha256sum` utility** (pre-installed on most Linux/macOS systems).  
- **`curl`** (for API requests) → Install via:  
  ```bash
  sudo apt install curl  # Linux
  brew install curl      # macOS
  ```

### **2️⃣ Set Up SendGrid API**
1. Create a **SendGrid account**: [https://sendgrid.com](https://sendgrid.com)  
2. Generate an **API key** with "Mail Send" permissions.  
3. Save the API key for later use in `config.cfg`.  

---

## **🛠 Setup Instructions**
### **1️⃣ Clone the Repository**
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### **2️⃣ Configure the Script**
Edit `config.cfg` and update it with your specific details:
```bash
# Local repository path
REPO_PATH="/path/to/your/repo"

# File or directory to monitor
WATCH_PATH="/path/to/your/file_or_directory"

# Git remote and branch
GIT_REMOTE="origin"
GIT_BRANCH="main"

# SendGrid Email API credentials
SENDGRID_API_KEY="your_sendgrid_api_key"
SENDER_EMAIL="your_email@example.com"

# List of collaborators (space-separated)
COLLABORATORS=("collab1@example.com" "collab2@example.com")
```

### **3️⃣ Make the Script Executable**
```bash
chmod +x monitor_and_push.sh
```

### **4️⃣ Run the Script**
```bash
./monitor_and_push.sh
```

---

## **📌 Example Usage**
### **1️⃣ Detects a Change**
```bash
Monitoring /path/to/your/file_or_directory for changes...
Change detected in /path/to/your/file_or_directory.
```

### **2️⃣ Commits & Pushes to GitHub**
```bash
Auto-commit: Changes detected in /path/to/your/file_or_directory
[main f5a8c3b] Auto-commit: Changes detected in file.txt
 1 file changed, 5 insertions(+)
Counting objects: 3, done.
Writing objects: 100% (3/3), 312 bytes | 312.00 KiB/s, done.
```

### **3️⃣ Sends an Email Notification**
```bash
Changes pushed successfully.
Email notification sent to collab1@example.com, collab2@example.com.
```

---

## **🛠 Troubleshooting**
| **Issue** | **Possible Solution** |
|-----------|----------------------|
| `command not found: git` | Install Git (`sudo apt install git` or `brew install git`). |
| `Git push failed` | Check if the repository has write access. Run `git status` for issues. |
| `Unauthorized (401) error from SendGrid` | Check if your SendGrid API key is correct. |
| `File monitoring not working` | Ensure `sha256sum` is available or use `fswatch` for macOS. |

---

## **📌 Next Steps**
- Extend support for `inotifywait` (Linux) and `fswatch` (macOS).  
- Add logging for easier debugging (`log.txt`).  
- Improve email formatting with HTML-based notifications.  

---

## **🤝 Contributing**
Feel free to submit issues or pull requests to improve the script! 🚀  

Would you like me to add logging or extend support for other OS types? 😊
