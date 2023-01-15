.class abstract Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;
.super Ljava/lang/Object;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/PhoneEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionHandler"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public event:Ljava/lang/String;

.field public resultCode:I

.field final synthetic this$0:Lanywheresoftware/b4a/phone/PhoneEvents;


# direct methods
.method private constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents;Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;)V

    return-void
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)Lanywheresoftware/b4a/phone/PhoneEvents;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    return-object v0
.end method


# virtual methods
.method public abstract handle(Landroid/content/Intent;)V
.end method

.method protected send(Landroid/content/Intent;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    if-nez p2, :cond_0

    .line 311
    new-array v0, v3, [Ljava/lang/Object;

    .line 316
    .local v0, "o":[Ljava/lang/Object;
    :goto_0
    array-length v1, v0

    sub-int/2addr v1, v3

    new-instance v2, Lanywheresoftware/b4a/objects/IntentWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/objects/IntentWrapper;-><init>()V

    invoke-static {v2, p1}, Lanywheresoftware/b4a/AbsObjectWrapper;->ConvertToWrapper(Lanywheresoftware/b4a/ObjectWrapper;Ljava/lang/Object;)Lanywheresoftware/b4a/ObjectWrapper;

    move-result-object v2

    aput-object v2, v0, v1

    .line 317
    sget-boolean v1, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz v1, :cond_1

    .line 318
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v2, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;

    invoke-direct {v2, p0, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    :goto_1
    return-void

    .line 313
    .end local v0    # "o":[Ljava/lang/Object;
    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 314
    .restart local v0    # "o":[Ljava/lang/Object;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    invoke-static {v1}, Lanywheresoftware/b4a/phone/PhoneEvents;->access$0(Lanywheresoftware/b4a/phone/PhoneEvents;)Lanywheresoftware/b4a/BA;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    invoke-static {v3}, Lanywheresoftware/b4a/phone/PhoneEvents;->access$1(Lanywheresoftware/b4a/phone/PhoneEvents;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->event:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
