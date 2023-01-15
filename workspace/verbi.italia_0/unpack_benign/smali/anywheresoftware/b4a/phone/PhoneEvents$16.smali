.class Lanywheresoftware/b4a/phone/PhoneEvents$16;
.super Landroid/content/BroadcastReceiver;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/phone/PhoneEvents;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$16;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    .line 259
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$16;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    invoke-static {v1}, Lanywheresoftware/b4a/phone/PhoneEvents;->access$2(Lanywheresoftware/b4a/phone/PhoneEvents;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    .line 266
    .local v0, "ah":Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lanywheresoftware/b4a/phone/PhoneEvents$16;->getResultCode()I

    move-result v1

    iput v1, v0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->resultCode:I

    .line 268
    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->handle(Landroid/content/Intent;)V

    goto :goto_0
.end method
