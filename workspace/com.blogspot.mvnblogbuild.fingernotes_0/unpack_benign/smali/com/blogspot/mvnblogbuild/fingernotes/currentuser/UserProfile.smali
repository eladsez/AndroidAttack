.class public Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;
    }
.end annotation


# static fields
.field public static SETT_ALARM_MODE:Ljava/lang/String;

.field private static userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;


# instance fields
.field private alarmDate:Ljava/util/Date;

.field private fileName:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private noteId:Ljava/lang/Integer;

.field private notesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private openNoteMode:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

.field private settings:Lorg/json/JSONObject;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ALARMMODE"

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->SETT_ALARM_MODE:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-direct {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;-><init>()V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    .line 41
    :cond_0
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearNoteProfile()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->noteId:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->title:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    .line 64
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->fileName:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->alarmDate:Ljava/util/Date;

    .line 67
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->clearUserMBitmap()V

    .line 68
    return-void
.end method

.method public clearUserMBitmap()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 54
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getAlarmDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->alarmDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNoteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->noteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->notesList:Ljava/util/List;

    return-object v0
.end method

.method public getOpenNoteMode()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->openNoteMode:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->title:Ljava/lang/String;

    return-object v0
.end method

.method public removeSettingValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    :cond_0
    return-void
.end method

.method public setAlarmDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "alarmDate"    # Ljava/util/Date;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->alarmDate:Ljava/util/Date;

    .line 92
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->fileName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setLastBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    return-void
.end method

.method public setNoteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "noteId"    # Ljava/lang/Integer;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->noteId:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setNotesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "notesList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;>;"
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->notesList:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setOpenNoteMode(Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;)V
    .locals 0
    .param p1, "openNoteMode"    # Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->openNoteMode:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile$OPEN_NOTE_MODE;

    .line 124
    return-void
.end method

.method public setSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "settings"    # Lorg/json/JSONObject;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->settings:Lorg/json/JSONObject;

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->title:Ljava/lang/String;

    .line 84
    return-void
.end method
