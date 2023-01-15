.class Lnet/youmi/android/t;
.super Ljava/lang/Object;


# static fields
.field static a:J

.field static b:J

.field static c:J

.field static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/youmi/android/t;->a:J

    sput-wide v0, Lnet/youmi/android/t;->b:J

    const-wide/32 v0, 0x186a0

    sput-wide v0, Lnet/youmi/android/t;->c:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lnet/youmi/android/t;->d:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Z
    .locals 9

    const-wide/16 v2, 0x0

    sget-wide v0, Lnet/youmi/android/t;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/youmi/android/t;->d:J

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    invoke-static {}, Lnet/youmi/android/AdManager;->a()J

    move-result-wide v2

    sget-wide v4, Lnet/youmi/android/t;->a:J

    sub-long v4, v0, v4

    sget-wide v6, Lnet/youmi/android/t;->b:J

    sub-long v6, v2, v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    sub-long/2addr v4, v6

    :goto_1
    sput-wide v0, Lnet/youmi/android/t;->a:J

    sput-wide v2, Lnet/youmi/android/t;->b:J

    sget-wide v0, Lnet/youmi/android/t;->c:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lnet/youmi/android/ak;->a(Ljava/lang/String;I)V

    move-wide v0, v2

    goto :goto_0

    :cond_1
    sub-long v4, v6, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
