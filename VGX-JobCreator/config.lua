Config = {}

-- [ Localization & Aesthetics | اللغة والجماليات ]
Config.Locale = 'en' -- Supported options: 'en' (English), 'ar' (Arabic)
Config.UiColor = "#0099ff" -- Accent color for the UI (RGB/HEX) | لون الواجهة الرئيسي

-- [ Framework & Inventory Configuration | إعدادات الفريمورك والحقيبة ]
Config.Core = "qb-core" -- Your core resource name (e.g., qb-core) | اسم ملف الكور الخاص بك

-- [ Identification System | نظام التعرف ]
-- 'license'   : Uses FiveM license to identify and save admin permissions. | التعرف عن طريق رخصة فايف إم
-- 'citizenid' : Uses QBCore CitizenID to identify and save admin permissions. | التعرف عن طريق كود المواطن
Config.System = "citizenid" 

-- [ Access Control | التحكم في الوصول ]
-- Define which QBCore permission levels can access the Permissions Management tab.
-- تحديد الرتب التي يمكنها الوصول للوحة الصلاحيات
-- Example: {'god', 'admin'}
Config.PermissionManagers = {'god'}


-- job
-- [ Navigation & Interaction | التنقل والتفاعل ]
-- Command to open the job creator
 -- 'vgxjob'
Config.EnableKeybind = true -- Enable/Disable opening panel with keybind | تفعيل/تعطيل فتح اللوحة عن طريق زر
Config.Keybind = 'F5' -- Default key to toggle the Admin System | الزر الافتراضي لفتح نظام الإدارة

-- [ Audit & Logging | السجلات والتدقيق ]
-- Set to true and provide Discord Webhook URLs below to log all administrative actions.
-- قم بتفعيلها وضع روابط ويب هوك ديسكورد لتسجيل جميع الإجراءات
Config.EnableLogs = false 
Config.webhookLogs = {
  ["SETPERMS"]    = "", -- Webhook for Assigning/Editing Staff Permissions | سجل تعيين وتعديل صلاحيات الإدارة
  ["DELETEADMIN"] = "", -- Webhook for Removing Staff Permissions | سجل حذف صلاحيات الإدارة
  ["CREATEJOB"]   = "", -- Webhook for Creating Jobs | سجل إنشاء الوظائف
  ["EDITJOB"]     = "", -- Webhook for Editing Jobs | سجل تعديل الوظائف
  ["SETJOB"]      = "", -- Webhook for Assigning Jobs to Players | سجل تعيين الوظائف للاعبين
  ["DELETEJOB"]   = "", -- Webhook for Deleting Jobs | سجل حذف الوظائف
}
