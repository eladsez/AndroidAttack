.class public Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "VoiceRecognition"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceRecognition"
.end annotation


# instance fields
.field private eventName:Ljava/lang/String;

.field private ion:Lanywheresoftware/b4a/IOnActivityResult;

.field private language:Ljava/lang/String;

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;Lanywheresoftware/b4a/IOnActivityResult;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    return-void
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->eventName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "EventName"    # Ljava/lang/String;

    .prologue
    .line 875
    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->eventName:Ljava/lang/String;

    .line 876
    return-void
.end method

.method public IsSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 895
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 897
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 897
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 896
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public Listen(Lanywheresoftware/b4a/BA;)V
    .locals 3
    .param p1, "ba"    # Lanywheresoftware/b4a/BA;

    .prologue
    .line 903
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->eventName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 904
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VoiceRecognition was not initialized."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 905
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->prompt:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->prompt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 907
    const-string v1, "android.speech.extra.PROMPT"

    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->language:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 909
    const-string v1, "android.speech.extra.LANGUAGE"

    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    :cond_2
    new-instance v1, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;

    invoke-direct {v1, p0, p1}, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;-><init>(Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;Lanywheresoftware/b4a/BA;)V

    iput-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    .line 927
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    invoke-virtual {p1, v1, v0}, Lanywheresoftware/b4a/BA;->startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V

    .line 928
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 889
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->language:Ljava/lang/String;

    .line 890
    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 881
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->prompt:Ljava/lang/String;

    .line 882
    return-void
.end method
