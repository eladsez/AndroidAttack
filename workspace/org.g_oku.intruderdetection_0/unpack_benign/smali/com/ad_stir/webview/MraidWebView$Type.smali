.class public final enum Lcom/ad_stir/webview/MraidWebView$Type;
.super Ljava/lang/Enum;
.source "MraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/webview/MraidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ad_stir/webview/MraidWebView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ad_stir/webview/MraidWebView$Type;

.field public static final enum inline1:Lcom/ad_stir/webview/MraidWebView$Type;

.field public static final enum inline2:Lcom/ad_stir/webview/MraidWebView$Type;

.field public static final enum interstitial:Lcom/ad_stir/webview/MraidWebView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/ad_stir/webview/MraidWebView$Type;

    const-string v1, "interstitial"

    invoke-direct {v0, v1, v2}, Lcom/ad_stir/webview/MraidWebView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ad_stir/webview/MraidWebView$Type;->interstitial:Lcom/ad_stir/webview/MraidWebView$Type;

    new-instance v0, Lcom/ad_stir/webview/MraidWebView$Type;

    const-string v1, "inline1"

    invoke-direct {v0, v1, v3}, Lcom/ad_stir/webview/MraidWebView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ad_stir/webview/MraidWebView$Type;->inline1:Lcom/ad_stir/webview/MraidWebView$Type;

    new-instance v0, Lcom/ad_stir/webview/MraidWebView$Type;

    const-string v1, "inline2"

    invoke-direct {v0, v1, v4}, Lcom/ad_stir/webview/MraidWebView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ad_stir/webview/MraidWebView$Type;->inline2:Lcom/ad_stir/webview/MraidWebView$Type;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ad_stir/webview/MraidWebView$Type;

    sget-object v1, Lcom/ad_stir/webview/MraidWebView$Type;->interstitial:Lcom/ad_stir/webview/MraidWebView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ad_stir/webview/MraidWebView$Type;->inline1:Lcom/ad_stir/webview/MraidWebView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ad_stir/webview/MraidWebView$Type;->inline2:Lcom/ad_stir/webview/MraidWebView$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ad_stir/webview/MraidWebView$Type;->$VALUES:[Lcom/ad_stir/webview/MraidWebView$Type;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ad_stir/webview/MraidWebView$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/ad_stir/webview/MraidWebView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ad_stir/webview/MraidWebView$Type;

    return-object v0
.end method

.method public static values()[Lcom/ad_stir/webview/MraidWebView$Type;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/ad_stir/webview/MraidWebView$Type;->$VALUES:[Lcom/ad_stir/webview/MraidWebView$Type;

    invoke-virtual {v0}, [Lcom/ad_stir/webview/MraidWebView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ad_stir/webview/MraidWebView$Type;

    return-object v0
.end method
