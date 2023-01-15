.class Lanywheresoftware/b4a/phone/PhoneEvents$15;
.super Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents;->InitializeWithPhoneState(Lanywheresoftware/b4a/BA;Ljava/lang/String;Lanywheresoftware/b4a/phone/Phone$PhoneId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/phone/PhoneEvents;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$15;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)V

    .line 238
    const-string v0, "_phonestatechanged"

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$15;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "state":Ljava/lang/String;
    const-string v2, "incoming_number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "incomingNumber":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 244
    const-string v0, ""

    .line 245
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, p1, v2}, Lanywheresoftware/b4a/phone/PhoneEvents$15;->send(Landroid/content/Intent;[Ljava/lang/Object;)V

    .line 246
    return-void
.end method
