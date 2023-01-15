.class public final enum Lcom/ad_stir/ad/AdErrorCode;
.super Ljava/lang/Enum;
.source "AdErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ad_stir/ad/AdErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ad_stir/ad/AdErrorCode;

.field public static final enum Timeout:Lcom/ad_stir/ad/AdErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/ad_stir/ad/AdErrorCode;

    const-string v1, "Timeout"

    invoke-direct {v0, v1, v2}, Lcom/ad_stir/ad/AdErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ad_stir/ad/AdErrorCode;->Timeout:Lcom/ad_stir/ad/AdErrorCode;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ad_stir/ad/AdErrorCode;

    sget-object v1, Lcom/ad_stir/ad/AdErrorCode;->Timeout:Lcom/ad_stir/ad/AdErrorCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ad_stir/ad/AdErrorCode;->$VALUES:[Lcom/ad_stir/ad/AdErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ad_stir/ad/AdErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/ad_stir/ad/AdErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ad_stir/ad/AdErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/ad_stir/ad/AdErrorCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/ad_stir/ad/AdErrorCode;->$VALUES:[Lcom/ad_stir/ad/AdErrorCode;

    invoke-virtual {v0}, [Lcom/ad_stir/ad/AdErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ad_stir/ad/AdErrorCode;

    return-object v0
.end method
