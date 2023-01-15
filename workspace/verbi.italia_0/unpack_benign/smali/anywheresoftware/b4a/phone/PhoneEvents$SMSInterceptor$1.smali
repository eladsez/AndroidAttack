.class Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;
.super Landroid/database/ContentObserver;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->ListenToOutgoingMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

.field private final synthetic val$content:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->val$content:Landroid/net/Uri;

    .line 358
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 362
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->val$content:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 362
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 364
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, "protocol":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 367
    .local v8, "type":I
    if-nez v7, :cond_0

    const/4 v0, 0x2

    if-eq v8, v0, :cond_1

    .line 373
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 370
    .restart local v7    # "protocol":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_1
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    invoke-static {v0}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->access$0(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;)Lanywheresoftware/b4a/BA;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    invoke-static {v3}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->access$1(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_messagesent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
