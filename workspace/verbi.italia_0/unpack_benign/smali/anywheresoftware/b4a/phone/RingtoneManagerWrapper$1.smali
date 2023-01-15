.class Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;
.super Ljava/lang/Object;
.source "RingtoneManagerWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/IOnActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;->ShowRingtonePicker(Lanywheresoftware/b4a/BA;Ljava/lang/String;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->this$0:Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->val$eventName:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ResultArrived(ILandroid/content/Intent;)V
    .locals 10
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "_pickerresult"

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "uri":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 146
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 147
    .local v0, "u":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 148
    const-string v1, ""

    .line 152
    .end local v0    # "u":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v2, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->this$0:Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;->access$0(Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;Lanywheresoftware/b4a/IOnActivityResult;)V

    .line 153
    if-eqz v1, :cond_2

    .line 154
    iget-object v2, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->this$0:Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_pickerresult"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_1
    return-void

    .line 150
    .restart local v0    # "u":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    .end local v0    # "u":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->this$0:Lanywheresoftware/b4a/phone/RingtoneManagerWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/phone/RingtoneManagerWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_pickerresult"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
