.class public Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;
.super Ljava/lang/Object;
.source "RingtoneManagerWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "RingtoneManager"
.end annotation


# static fields
.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1


# instance fields
.field private ion:Lanywheresoftware/b4a/IOnActivityResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;Lanywheresoftware/b4a/IOnActivityResult;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    return-void
.end method


# virtual methods
.method public AddToMediaStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 4
    .param p1, "Dir"    # Ljava/lang/String;
    .param p2, "FileName"    # Ljava/lang/String;
    .param p3, "Title"    # Ljava/lang/String;
    .param p4, "IsAlarm"    # Z
    .param p5, "IsNotification"    # Z
    .param p6, "IsRingtone"    # Z
    .param p7, "IsMusic"    # Z

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, "k":Ljava/io/File;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "mime_type"

    const-string v3, "audio/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "is_ringtone"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v2, "is_notification"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    const-string v2, "is_alarm"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    const-string v2, "is_music"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public DeleteRingtone(Ljava/lang/String;)V
    .locals 3
    .param p1, "Uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public GetContentDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "ContentDir"

    return-object v0
.end method

.method public GetDefault(I)Ljava/lang/String;
    .locals 2
    .param p1, "Type"    # I

    .prologue
    .line 114
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 115
    .local v0, "u":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 116
    const-string v1, ""

    .line 117
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public SetDefault(ILjava/lang/String;)V
    .locals 2
    .param p1, "Type"    # I
    .param p2, "Uri"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 101
    return-void
.end method

.method public ShowRingtonePicker(Lanywheresoftware/b4a/BA;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 4
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;
    .param p2, "EventName"    # Ljava/lang/String;
    .param p3, "Type"    # I
    .param p4, "IncludeSilence"    # Z
    .param p5, "ChosenRingtone"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v2, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "eventName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    :cond_0
    new-instance v2, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;-><init>(Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v2, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    .line 161
    iget-object v2, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    invoke-virtual {p1, v2, v1}, Lanywheresoftware/b4a/BA;->startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V

    .line 162
    return-void
.end method
