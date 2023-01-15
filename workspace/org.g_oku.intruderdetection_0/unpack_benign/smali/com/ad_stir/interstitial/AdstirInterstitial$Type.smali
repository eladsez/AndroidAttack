.class final enum Lcom/ad_stir/interstitial/AdstirInterstitial$Type;
.super Ljava/lang/Enum;
.source "AdstirInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ad_stir/interstitial/AdstirInterstitial$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

.field public static final enum FULLSCREEN:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

.field public static final enum PLUSICON:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v2}, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->FULLSCREEN:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    .line 160
    new-instance v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    const-string v1, "PLUSICON"

    invoke-direct {v0, v1, v3}, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->PLUSICON:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    sget-object v1, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->FULLSCREEN:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->PLUSICON:Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->$VALUES:[Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ad_stir/interstitial/AdstirInterstitial$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    return-object v0
.end method

.method public static values()[Lcom/ad_stir/interstitial/AdstirInterstitial$Type;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->$VALUES:[Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    invoke-virtual {v0}, [Lcom/ad_stir/interstitial/AdstirInterstitial$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ad_stir/interstitial/AdstirInterstitial$Type;

    return-object v0
.end method
