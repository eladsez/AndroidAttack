.class Lnet/youmi/android/am;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x1e

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/am;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/am;->b:Ljava/lang/String;

    sput v1, Lnet/youmi/android/am;->c:I

    sput v1, Lnet/youmi/android/am;->d:I

    const-string v0, "1.0"

    sput-object v0, Lnet/youmi/android/am;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/am;->e:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {p1}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/ai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v5, v6

    :goto_0
    if-lt v5, v4, :cond_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static a(I)V
    .locals 2

    const/16 v1, 0xc8

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_1

    :goto_0
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    sput v0, Lnet/youmi/android/am;->c:I

    return-void

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "1.0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/am;->e:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static b()I
    .locals 1

    sget v0, Lnet/youmi/android/am;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static b(I)V
    .locals 2

    const/16 v1, 0xc8

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_1

    :goto_0
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    sput v0, Lnet/youmi/android/am;->d:I

    return-void

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/am;->a:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static c()J
    .locals 5

    invoke-static {}, Lnet/youmi/android/am;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lnet/youmi/android/am;->d()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/am;->b:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static d()I
    .locals 1

    sget v0, Lnet/youmi/android/am;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/am;->a:Ljava/lang/String;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/am;->b:Ljava/lang/String;

    return-object v0
.end method
