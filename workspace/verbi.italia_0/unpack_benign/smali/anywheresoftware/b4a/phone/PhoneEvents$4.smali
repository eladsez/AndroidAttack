.class Lanywheresoftware/b4a/phone/PhoneEvents$4;
.super Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents;-><init>()V
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
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$4;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)V

    .line 123
    const-string v0, "_shutdown"

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$4;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$4;->send(Landroid/content/Intent;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method
