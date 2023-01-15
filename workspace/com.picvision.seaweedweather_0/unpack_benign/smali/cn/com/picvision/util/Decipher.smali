.class public Lcn/com/picvision/util/Decipher;
.super Ljava/lang/Object;
.source "Decipher.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcn/com/picvision/util/Decipher;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/picvision/util/Decipher;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/util/Decipher;->decipher([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decipher([B)[B
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 16
    array-length v1, p0

    .line 17
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 20
    return-object p0

    .line 18
    :cond_0
    aget-byte v2, p0, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
