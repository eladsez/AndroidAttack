.class Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Lanywheresoftware/b4a/IOnActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->Listen(Lanywheresoftware/b4a/BA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;Lanywheresoftware/b4a/BA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;->this$1:Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;->val$ba:Lanywheresoftware/b4a/BA;

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ResultArrived(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 915
    new-instance v0, Lanywheresoftware/b4a/objects/collections/List;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/collections/List;-><init>()V

    .line 916
    .local v0, "list":Lanywheresoftware/b4a/objects/collections/List;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 917
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 918
    .local v1, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 919
    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/collections/List;->setObject(Ljava/lang/Object;)V

    .line 922
    .end local v1    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;->this$1:Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->access$0(Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;Lanywheresoftware/b4a/IOnActivityResult;)V

    .line 923
    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;->this$1:Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition$1;->this$1:Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;

    invoke-static {v5}, Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;->access$1(Lanywheresoftware/b4a/phone/Phone$VoiceRecognition;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/collections/List;->IsInitialized()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    return-void
.end method
