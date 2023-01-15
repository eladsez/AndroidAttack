.class Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;
.super Ljava/lang/Object;
.source "PhoneEvents.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4ARunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->send(Landroid/content/Intent;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

.field private final synthetic val$o:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;->val$o:[Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    invoke-static {v0}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->access$1(Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)Lanywheresoftware/b4a/phone/PhoneEvents;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/phone/PhoneEvents;->access$0(Lanywheresoftware/b4a/phone/PhoneEvents;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    invoke-static {v2}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->access$1(Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)Lanywheresoftware/b4a/phone/PhoneEvents;

    move-result-object v2

    invoke-static {v2}, Lanywheresoftware/b4a/phone/PhoneEvents;->access$1(Lanywheresoftware/b4a/phone/PhoneEvents;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;

    iget-object v2, v2, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;->event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler$1;->val$o:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method
