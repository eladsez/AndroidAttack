.class public Lorg/hermit/android/core/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hermit/android/core/AppUtils$Detail;,
        Lorg/hermit/android/core/AppUtils$Version;
    }
.end annotation


# static fields
.field private static utilsInstance:Lorg/hermit/android/core/AppUtils;


# instance fields
.field private appVersion:Lorg/hermit/android/core/AppUtils$Version;

.field private parentApp:Landroid/app/Activity;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    sput-object v0, Lorg/hermit/android/core/AppUtils;->utilsInstance:Lorg/hermit/android/core/AppUtils;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    .line 83
    iput-object p1, p0, Lorg/hermit/android/core/AppUtils;->parentApp:Landroid/app/Activity;

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/core/AppUtils;->resources:Landroid/content/res/Resources;

    .line 85
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lorg/hermit/android/core/AppUtils;
    .locals 1
    .param p0, "parent"    # Landroid/app/Activity;

    .prologue
    .line 96
    sget-object v0, Lorg/hermit/android/core/AppUtils;->utilsInstance:Lorg/hermit/android/core/AppUtils;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/hermit/android/core/AppUtils;

    invoke-direct {v0, p0}, Lorg/hermit/android/core/AppUtils;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lorg/hermit/android/core/AppUtils;->utilsInstance:Lorg/hermit/android/core/AppUtils;

    .line 98
    :cond_0
    sget-object v0, Lorg/hermit/android/core/AppUtils;->utilsInstance:Lorg/hermit/android/core/AppUtils;

    return-object v0
.end method


# virtual methods
.method public getAppVersion()Lorg/hermit/android/core/AppUtils$Version;
    .locals 9

    .prologue
    .line 114
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    if-eqz v7, :cond_0

    .line 115
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    .line 145
    :goto_0
    return-object v7

    .line 118
    :cond_0
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->parentApp:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 122
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->parentApp:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "pname":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/hermit/android/core/AppUtils$Version;

    invoke-direct {v7, p0}, Lorg/hermit/android/core/AppUtils$Version;-><init>(Lorg/hermit/android/core/AppUtils;)V

    iput-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    .line 126
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 127
    .local v4, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v8, v7, Lorg/hermit/android/core/AppUtils$Version;->versionCode:I

    .line 128
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v8, v7, Lorg/hermit/android/core/AppUtils$Version;->versionName:Ljava/lang/CharSequence;

    .line 131
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 133
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 134
    .local v1, "alabel":I
    if-eqz v1, :cond_1

    .line 135
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    iget-object v8, p0, Lorg/hermit/android/core/AppUtils;->resources:Landroid/content/res/Resources;

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lorg/hermit/android/core/AppUtils$Version;->appName:Ljava/lang/CharSequence;

    .line 137
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 138
    .local v2, "dlabel":I
    if-eqz v2, :cond_2

    .line 139
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    iget-object v8, p0, Lorg/hermit/android/core/AppUtils;->resources:Landroid/content/res/Resources;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lorg/hermit/android/core/AppUtils$Version;->appDesc:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "alabel":I
    .end local v2    # "dlabel":I
    .end local v4    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    iget-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    goto :goto_0

    .line 141
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 142
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/hermit/android/core/AppUtils;->appVersion:Lorg/hermit/android/core/AppUtils$Version;

    goto :goto_1
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lorg/hermit/android/core/AppUtils$Detail;->SIMPLE:Lorg/hermit/android/core/AppUtils$Detail;

    invoke-virtual {p0, v0}, Lorg/hermit/android/core/AppUtils;->getVersionString(Lorg/hermit/android/core/AppUtils$Detail;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionString(Lorg/hermit/android/core/AppUtils$Detail;)Ljava/lang/String;
    .locals 11
    .param p1, "detail"    # Lorg/hermit/android/core/AppUtils$Detail;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 168
    iget-object v6, p0, Lorg/hermit/android/core/AppUtils;->parentApp:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "pname":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/hermit/android/core/AppUtils;->getAppVersion()Lorg/hermit/android/core/AppUtils$Version;

    move-result-object v4

    .line 170
    .local v4, "ver":Lorg/hermit/android/core/AppUtils$Version;
    if-nez v4, :cond_0

    .line 171
    const-string v6, "%s (no info)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 187
    :goto_0
    return-object v6

    .line 173
    :cond_0
    iget-object v0, v4, Lorg/hermit/android/core/AppUtils$Version;->appName:Ljava/lang/CharSequence;

    .line 174
    .local v0, "aname":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 175
    const-string v0, "?"

    .line 176
    :cond_1
    iget v3, v4, Lorg/hermit/android/core/AppUtils$Version;->versionCode:I

    .line 177
    .local v3, "vcode":I
    iget-object v5, v4, Lorg/hermit/android/core/AppUtils$Version;->versionName:Ljava/lang/CharSequence;

    .line 178
    .local v5, "vname":Ljava/lang/CharSequence;
    if-nez v5, :cond_2

    .line 179
    const-string v5, "?.?"

    .line 181
    :cond_2
    const/4 v2, 0x0

    .line 182
    .local v2, "res":Ljava/lang/String;
    sget-object v6, Lorg/hermit/android/core/AppUtils$Detail;->DEBUG:Lorg/hermit/android/core/AppUtils$Detail;

    if-ne p1, v6, :cond_3

    .line 183
    const-string v6, "%s (%s) %s (%d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    aput-object v1, v7, v9

    aput-object v5, v7, v10

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v6, v2

    .line 187
    goto :goto_0

    .line 185
    :cond_3
    const-string v6, "%s %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v8

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
