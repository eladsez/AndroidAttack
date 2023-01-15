.class Ljp/co/fullyear/WebSiteAppAKBNews/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-static {v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->access$0(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$1;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    iget-object v1, v1, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->BaseUrlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 96
    return-void
.end method
