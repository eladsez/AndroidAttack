.class final Lcom/ad_stir/webview/AdstirMraidView$1;
.super Lorg/json/JSONArray;
.source "AdstirMraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/webview/AdstirMraidView;->createHTML(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 178
    sget-object v0, Lcom/ad_stir/webview/MraidWebView;->SUPPORT:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "func":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/ad_stir/webview/AdstirMraidView$1;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "func":Ljava/lang/String;
    :cond_0
    return-void
.end method
