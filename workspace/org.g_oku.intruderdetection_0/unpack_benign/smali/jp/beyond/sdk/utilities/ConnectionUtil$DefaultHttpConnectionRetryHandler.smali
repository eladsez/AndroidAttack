.class public Ljp/beyond/sdk/utilities/ConnectionUtil$DefaultHttpConnectionRetryHandler;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"

# interfaces
.implements Ljp/beyond/sdk/utilities/ConnectionUtil$HttpConnectionRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/sdk/utilities/ConnectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultHttpConnectionRetryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/beyond/sdk/utilities/ConnectionUtil;


# direct methods
.method public constructor <init>(Ljp/beyond/sdk/utilities/ConnectionUtil;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Ljp/beyond/sdk/utilities/ConnectionUtil$DefaultHttpConnectionRetryHandler;->this$0:Ljp/beyond/sdk/utilities/ConnectionUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Ljava/lang/Throwable;I)Z
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "attemptNumber"    # I

    .prologue
    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x5

    if-le p2, v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
