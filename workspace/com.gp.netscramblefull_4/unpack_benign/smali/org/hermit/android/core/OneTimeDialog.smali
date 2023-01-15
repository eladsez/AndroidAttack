.class public Lorg/hermit/android/core/OneTimeDialog;
.super Ljava/lang/Object;
.source "OneTimeDialog.java"


# static fields
.field private static final PREF_PREFIX:Ljava/lang/String; = "org.hermit.android.core."

.field private static appPrefs:Landroid/content/SharedPreferences;

.field private static appUtils:Lorg/hermit/android/core/AppUtils;


# instance fields
.field private final noticeClose:I

.field private noticeDialog:Lorg/hermit/android/notice/InfoBox;

.field private final noticeName:Ljava/lang/String;

.field private final noticeText:I

.field private final noticeTitle:I

.field private final parentApp:Landroid/app/Activity;

.field private final prefName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    sput-object v0, Lorg/hermit/android/core/OneTimeDialog;->appUtils:Lorg/hermit/android/core/AppUtils;

    .line 163
    sput-object v0, Lorg/hermit/android/core/OneTimeDialog;->appPrefs:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;III)V
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "title"    # I
    .param p4, "text"    # I
    .param p5, "close"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/hermit/android/core/OneTimeDialog;->parentApp:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeName:Ljava/lang/String;

    .line 69
    iput p3, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeTitle:I

    .line 70
    iput p4, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeText:I

    .line 71
    iput p5, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeClose:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.hermit.android.core."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/core/OneTimeDialog;->prefName:Ljava/lang/String;

    .line 76
    sget-object v0, Lorg/hermit/android/core/OneTimeDialog;->appUtils:Lorg/hermit/android/core/AppUtils;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/hermit/android/core/OneTimeDialog;->parentApp:Landroid/app/Activity;

    invoke-static {v0}, Lorg/hermit/android/core/AppUtils;->getInstance(Landroid/app/Activity;)Lorg/hermit/android/core/AppUtils;

    move-result-object v0

    sput-object v0, Lorg/hermit/android/core/OneTimeDialog;->appUtils:Lorg/hermit/android/core/AppUtils;

    .line 78
    :cond_0
    sget-object v0, Lorg/hermit/android/core/OneTimeDialog;->appPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/hermit/android/core/OneTimeDialog;->parentApp:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/hermit/android/core/OneTimeDialog;->appPrefs:Landroid/content/SharedPreferences;

    .line 80
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/core/OneTimeDialog;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/hermit/android/core/OneTimeDialog;->setSeen()V

    return-void
.end method

.method private setSeen()V
    .locals 4

    .prologue
    .line 138
    sget-object v2, Lorg/hermit/android/core/OneTimeDialog;->appUtils:Lorg/hermit/android/core/AppUtils;

    invoke-virtual {v2}, Lorg/hermit/android/core/AppUtils;->getAppVersion()Lorg/hermit/android/core/AppUtils$Version;

    move-result-object v1

    .line 140
    .local v1, "version":Lorg/hermit/android/core/AppUtils$Version;
    sget-object v2, Lorg/hermit/android/core/OneTimeDialog;->appPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lorg/hermit/android/core/OneTimeDialog;->prefName:Ljava/lang/String;

    iget v3, v1, Lorg/hermit/android/core/AppUtils$Version;->versionCode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method


# virtual methods
.method protected isAccepted()Z
    .locals 4

    .prologue
    .line 120
    sget-object v2, Lorg/hermit/android/core/OneTimeDialog;->appUtils:Lorg/hermit/android/core/AppUtils;

    invoke-virtual {v2}, Lorg/hermit/android/core/AppUtils;->getAppVersion()Lorg/hermit/android/core/AppUtils$Version;

    move-result-object v1

    .line 122
    .local v1, "version":Lorg/hermit/android/core/AppUtils$Version;
    const/4 v0, -0x1

    .line 124
    .local v0, "seen":I
    :try_start_0
    sget-object v2, Lorg/hermit/android/core/OneTimeDialog;->appPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lorg/hermit/android/core/OneTimeDialog;->prefName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    iget v2, v1, Lorg/hermit/android/core/AppUtils$Version;->versionCode:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeDialog:Lorg/hermit/android/notice/InfoBox;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/hermit/android/core/OneTimeDialog$1;

    iget-object v1, p0, Lorg/hermit/android/core/OneTimeDialog;->parentApp:Landroid/app/Activity;

    iget v2, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeClose:I

    invoke-direct {v0, p0, v1, v2}, Lorg/hermit/android/core/OneTimeDialog$1;-><init>(Lorg/hermit/android/core/OneTimeDialog;Landroid/app/Activity;I)V

    iput-object v0, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeDialog:Lorg/hermit/android/notice/InfoBox;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeDialog:Lorg/hermit/android/notice/InfoBox;

    iget v1, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeTitle:I

    iget v2, p0, Lorg/hermit/android/core/OneTimeDialog;->noticeText:I

    invoke-virtual {v0, v1, v2}, Lorg/hermit/android/notice/InfoBox;->show(II)V

    .line 110
    return-void
.end method

.method public showFirst()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/hermit/android/core/OneTimeDialog;->isAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/hermit/android/core/OneTimeDialog;->show()V

    .line 93
    :cond_0
    return-void
.end method
