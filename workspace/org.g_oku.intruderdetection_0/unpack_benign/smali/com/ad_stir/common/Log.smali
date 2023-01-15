.class public final Lcom/ad_stir/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Adstir"

.field private static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x4

    sput v0, Lcom/ad_stir/common/Log;->logLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 17
    const-string v0, "Adstir"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 22
    const-string v0, "Adstir"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 32
    const-string v0, "Adstir"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 37
    const-string v0, "Adstir"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 27
    const-string v0, "Adstir"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 8
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 42
    const-string v0, "Adstir"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 47
    const-string v0, "Adstir"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .prologue
    .line 12
    sput p0, Lcom/ad_stir/common/Log;->logLevel:I

    .line 13
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 52
    const-string v0, "Adstir"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 57
    const-string v0, "Adstir"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 72
    const-string v0, "Adstir"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 67
    const-string v0, "Adstir"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    sget v0, Lcom/ad_stir/common/Log;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 62
    const-string v0, "Adstir"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_0
    return-void
.end method
