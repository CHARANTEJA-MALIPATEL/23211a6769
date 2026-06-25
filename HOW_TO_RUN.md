# How to Run the App - Step by Step

## ⚡ Quick Start (Easiest Way)

### Option 1: Use the Batch File (Windows)
Just double-click: **`start-app.bat`**

That's it! The app will:
1. Check for dependencies
2. Install them if needed
3. Start the server
4. Open at http://localhost:3000

---

## 📝 Manual Method

If you prefer typing commands:

### Step 1: Open Terminal/Command Prompt
Press `Win + R`, type `cmd`, press Enter

### Step 2: Navigate to Project
```bash
cd D:\23211a6769Project
```

### Step 3: Go to Frontend Folder
```bash
cd Campus-Evaluation-FS\notification-app-fe
```

### Step 4: Install Dependencies (First Time Only)
```bash
npm install
```
*Wait for installation to complete (1-2 minutes)*

### Step 5: Start the App
```bash
npm run dev
```

### Step 6: Open Browser
Visit: **http://localhost:3000**

---

## 🎯 Expected Output

When you run `npm run dev`, you should see:
```
  VITE v8.0.12  ready in 500 ms

  ➜  Local:   http://localhost:3000/
  ➜  Network: use --host to expose
  ➜  press h + enter to show help
```

Then the browser opens automatically!

---

## ✅ Verify It's Working

### 1. Check the Browser
- See "Campus Notifications" heading
- Two tabs: "All Notifications" and "Priority Inbox"
- Notifications loading from API

### 2. Check Console (F12)
You should see logs like:
```
[INFO] [frontend] [component] App: mount
[INFO] [frontend] [api] API Request: GET /notifications
[INFO] [frontend] [api] API Response: 200 (duration: 245ms)
```

### 3. Try Features
- ✅ Switch between tabs
- ✅ Click filter buttons (Placement, Result, Event)
- ✅ Navigate pages
- ✅ See "New" badges on notifications

---

## 🚨 Troubleshooting

### Problem: "npm is not recognized"
**Solution**: Install Node.js from https://nodejs.org/
- Download LTS version
- Install it
- Restart command prompt
- Try again

### Problem: Port 3000 already in use
**Solution**: 
```bash
# Kill the process using port 3000
netstat -ano | findstr :3000
taskkill /PID <process_id> /F

# Or change port in vite.config.js to 3001
```

### Problem: Dependencies not installing
**Solution**: 
```bash
# Clear npm cache
npm cache clean --force

# Try installing again
npm install --legacy-peer-deps
```

### Problem: API not loading
**Solution**:
- Check internet connection
- API URL: http://4.224.186.213/evaluation-service/notifications
- Try opening URL in browser to verify API is accessible

### Problem: Blank page
**Solution**:
1. Check browser console (F12) for errors
2. Make sure you're in the right folder
3. Try: `npm run build && npm run preview`

---

## 📍 Your Current Location

You should be in:
```
D:\23211a6769Project\Campus-Evaluation-FS\notification-app-fe
```

Verify with: `cd` (shows current directory)

---

## 🔄 Next Time (After First Setup)

After the first time, it's just:
```bash
cd D:\23211a6769Project\Campus-Evaluation-FS\notification-app-fe
npm run dev
```

Or double-click **`start-app.bat`** from the root folder!

---

## 📦 Project Structure

```
D:\23211a6769Project\
├── start-app.bat              ← Double-click this!
├── HOW_TO_RUN.md             ← You are here
└── Campus-Evaluation-FS\
    └── notification-app-fe\   ← The app is here
        ├── src\              ← Code files
        ├── package.json      ← Dependencies
        └── .env              ← Configuration
```

---

## ✨ Features to Test

Once running, try:

1. **All Notifications Tab**
   - See paginated list
   - Use filters (Event, Result, Placement)
   - Click through pages
   - Notice "New" badges

2. **Priority Inbox Tab**
   - See top 10 important notifications
   - Placement notifications ranked highest
   - Priority scores displayed
   - Gold badges for top 3

3. **Console Logs**
   - F12 to open DevTools
   - See all actions logged
   - API timing visible

---

## 🎓 For Demo/Presentation

1. Run `start-app.bat`
2. Wait for browser to open
3. Show both tabs
4. Demonstrate filters
5. Show console logs (F12)
6. Explain priority algorithm

---

Need help? Check the logs in console or see `API_CONNECTION.md` for API details.

**Happy Testing! 🚀**
