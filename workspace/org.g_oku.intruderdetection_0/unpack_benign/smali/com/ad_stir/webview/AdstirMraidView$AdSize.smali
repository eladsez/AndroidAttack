.class public Lcom/ad_stir/webview/AdstirMraidView$AdSize;
.super Ljava/lang/Object;
.source "AdstirMraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/webview/AdstirMraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdSize"
.end annotation


# static fields
.field private static final FULL:I = -0x1

.field public static final Size300x100:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

.field public static final Size300x250:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

.field public static final Size320x100:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

.field public static final Size320x50:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

.field public static final SizeFullScreen:Lcom/ad_stir/webview/AdstirMraidView$AdSize;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0x12c

    const/16 v3, 0x64

    const/4 v2, -0x1

    .line 54
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    const/16 v1, 0x32

    invoke-direct {v0, v5, v1}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    sput-object v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->Size320x50:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .line 55
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    const/16 v1, 0xfa

    invoke-direct {v0, v4, v1}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    sput-object v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->Size300x250:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .line 56
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    invoke-direct {v0, v5, v3}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    sput-object v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->Size320x100:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .line 57
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    invoke-direct {v0, v4, v3}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    sput-object v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->Size300x100:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .line 58
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    invoke-direct {v0, v2, v2}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    sput-object v0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->SizeFullScreen:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->width:I

    .line 49
    iput p2, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->height:I

    .line 50
    return-void
.end method


# virtual methods
.method public fullscreen()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    iget v0, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->width:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight(Landroid/app/Activity;)I
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 73
    iget v1, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 74
    iget v1, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->height:I

    .line 77
    :goto_0
    return v1

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 77
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Lcom/ad_stir/common/Dip;->pxToDip(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_0
.end method

.method public getWidth(Landroid/app/Activity;)I
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 64
    iget v1, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    iget v1, p0, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->width:I

    .line 68
    :goto_0
    return v1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 68
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/ad_stir/common/Dip;->pxToDip(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_0
.end method
