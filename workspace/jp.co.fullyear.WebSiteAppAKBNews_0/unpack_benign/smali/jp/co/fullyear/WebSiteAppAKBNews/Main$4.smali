.class Ljp/co/fullyear/WebSiteAppAKBNews/Main$4;
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
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$4;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$4;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->DialogmultiLineInput(I)V

    .line 117
    return-void
.end method
