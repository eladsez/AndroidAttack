.class Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;
.super Landroid/widget/FrameLayout;
.source "AdstirInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;


# direct methods
.method constructor <init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;Landroid/content/Context;)V
    .locals 10
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x32

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x4c

    .line 183
    iput-object p1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$1;

    invoke-direct {v1, p0, v3, v3}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$1;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;II)V

    invoke-virtual {p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->setBackgroundColor(I)V

    .line 192
    new-instance v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$2;

    invoke-direct {v1, p0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$2;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;)V

    invoke-virtual {p0, v1}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-static {}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$400()[B

    move-result-object v1

    invoke-static {}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$400()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v9, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 200
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    .local v8, "close":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v2, v4}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v2

    iget-object v3, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v3, v4}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$500(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;I)I

    move-result v3

    const/16 v4, 0x35

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    new-instance v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$3;

    invoke-direct {v1, p0}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$3;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;)V

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0, v8}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->addView(Landroid/view/View;)V

    .line 212
    new-instance v0, Lcom/ad_stir/webview/AdstirMraidView;

    iget-object v1, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v1, v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->val$activity:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    iget-object v2, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v2, v2, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v2}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$200(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->this$1:Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;

    iget-object v3, v3, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1;->this$0:Lcom/ad_stir/interstitial/AdstirInterstitialActivity;

    invoke-static {v3}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity;->access$300(Lcom/ad_stir/interstitial/AdstirInterstitialActivity;)I

    move-result v3

    sget-object v4, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->SizeFullScreen:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ad_stir/webview/AdstirMraidView;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V

    .line 213
    .local v0, "wv":Lcom/ad_stir/webview/AdstirMraidView;
    new-instance v1, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;

    invoke-direct {v1, p0, v8}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2$4;-><init>(Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView;->setListener(Lcom/ad_stir/webview/AdstirMraidView$Listener;)V

    .line 232
    invoke-virtual {p0, v0, v9}, Lcom/ad_stir/interstitial/AdstirInterstitialActivity$1$2;->addView(Landroid/view/View;I)V

    .line 233
    return-void
.end method
