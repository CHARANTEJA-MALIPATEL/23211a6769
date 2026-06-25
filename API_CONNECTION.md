# API Connection Details

## Where the API is Connected

### 📍 Location
**File**: `Campus-Evaluation-FS/notification-app-fe/src/api/notifications.js`

### 🔗 API Endpoint
```
Base URL: http://4.224.186.213/evaluation-service
Endpoint: GET /notifications
```

This is the API provided in the Affordmed evaluation (Stage 6 requirements).

### 📄 Configuration Files

#### 1. Environment Variables (Recommended)
**File**: `Campus-Evaluation-FS/notification-app-fe/.env`
```env
VITE_API_BASE_URL=http://4.224.186.213/evaluation-service
```

#### 2. Direct in Code (Fallback)
**File**: `Campus-Evaluation-FS/notification-app-fe/src/api/notifications.js`
```javascript
const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || 
                     'http://4.224.186.213/evaluation-service';
```

### 🔧 How to Change API

**Option 1: Edit .env file**
```bash
cd Campus-Evaluation-FS/notification-app-fe
nano .env  # or any text editor
# Change VITE_API_BASE_URL to your API
npm run dev  # restart server
```

**Option 2: Edit notifications.js directly**
```javascript
// Change line 3 in src/api/notifications.js
const API_BASE_URL = 'http://your-api-url.com/api';
```

### 📊 API Usage in Code

**Three main functions use the API:**

1. **fetchNotifications()** - Lines 10-40
   - Fetches paginated notifications
   - Supports filtering by type
   - Used in All Notifications tab

2. **getPriorityNotifications()** - Lines 65-95
   - Fetches multiple pages
   - Calculates priority scores
   - Used in Priority Inbox tab

3. **calculatePriority()** - Lines 42-58
   - Ranks notifications (client-side)
   - Placement > Result > Event
   - Factors in recency

### 🔍 How to Verify Connection

**Method 1: Check Browser Console**
```
1. Run: npm run dev
2. Open: http://localhost:3000
3. Press F12 (DevTools)
4. Look for logs:
   [INFO] [frontend] [api] API Request: GET /notifications
   [INFO] [frontend] [api] API Response: 200 (duration: XXms)
```

**Method 2: Check Network Tab**
```
1. F12 > Network tab
2. Filter by "Fetch/XHR"
3. Look for: evaluation-service/notifications
4. Check Status: 200 OK
```

**Method 3: Test API Directly**
```bash
# In browser or curl
curl "http://4.224.186.213/evaluation-service/notifications?limit=10&page=1"
```

### 📦 What Data Comes from API

**Expected Response Format:**
```json
{
  "notifications": [
    {
      "ID": "d146095a-0d86-4a34-9e69-3900a14576bc",
      "Type": "Placement",
      "Message": "Company hiring announcement",
      "Timestamp": "2026-04-22 17:51:30",
      "isRead": false
    }
  ],
  "total": 150,
  "page": 1,
  "totalPages": 8
}
```

### 🚨 Troubleshooting

**Problem: API not loading**
- Check if API is accessible: http://4.224.186.213/evaluation-service/notifications
- Check browser console for errors
- Verify internet connection

**Problem: CORS error**
- API needs to allow localhost:3000
- Check console error message
- This shouldn't happen with the evaluation API

**Problem: Wrong data format**
- API must return JSON with notifications array
- Check network tab response
- Verify notification objects have required fields

### 📚 More Details

See comprehensive documentation:
- **`Campus-Evaluation-FS/notification-app-fe/CONFIG.md`** - Full config guide
- **`Campus-Evaluation-FS/notification_system_design.md`** - API design details

---

## Quick Summary

✅ **API URL**: http://4.224.186.213/evaluation-service  
✅ **File**: src/api/notifications.js  
✅ **Config**: .env file (optional)  
✅ **No Auth**: Publicly accessible (as per evaluation)  
✅ **Logging**: All API calls logged in console  

**To change API**: Edit `.env` file or `notifications.js` line 3
