.class Lanywheresoftware/b4a/phone/PhoneEvents$13;
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
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$13;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)V

    .line 206
    const-string v0, "_batterychanged"

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$13;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 209
    const-string v3, "level"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "level":I
    const-string v3, "scale"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 211
    .local v2, "scale":I
    const-string v3, "plugged"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    move v1, v6

    .line 212
    .local v1, "plugged":Z
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lanywheresoftware/b4a/phone/PhoneEvents$13;->send(Landroid/content/Intent;[Ljava/lang/Object;)V

    .line 213
    return-void

    .end local v1    # "plugged":Z
    :cond_0
    move v1, v5

    .line 211
    goto :goto_0
.end method
