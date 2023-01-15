.class Lanywheresoftware/b4a/phone/PhoneEvents$10;
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
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$10;->this$0:Lanywheresoftware/b4a/phone/PhoneEvents;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents;Lanywheresoftware/b4a/phone/PhoneEvents$ActionHandler;)V

    .line 166
    const-string v0, "_smssentstatus"

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$10;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    const-string v0, ""

    .line 170
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$10;->resultCode:I

    packed-switch v1, :pswitch_data_0

    .line 188
    :goto_0
    :pswitch_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$10;->resultCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    const/4 v2, 0x2

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lanywheresoftware/b4a/phone/PhoneEvents$10;->send(Landroid/content/Intent;[Ljava/lang/Object;)V

    .line 189
    return-void

    .line 172
    :pswitch_1
    const-string v0, "OK"

    .line 173
    goto :goto_0

    .line 175
    :pswitch_2
    const-string v0, "GENERIC_FAILURE"

    .line 176
    goto :goto_0

    .line 178
    :pswitch_3
    const-string v0, "NO_SERVICE"

    .line 179
    goto :goto_0

    .line 181
    :pswitch_4
    const-string v0, "NULL_PDU"

    .line 182
    goto :goto_0

    .line 184
    :pswitch_5
    const-string v0, "RADIO_OFF"

    goto :goto_0

    :cond_0
    move v2, v4

    .line 188
    goto :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
