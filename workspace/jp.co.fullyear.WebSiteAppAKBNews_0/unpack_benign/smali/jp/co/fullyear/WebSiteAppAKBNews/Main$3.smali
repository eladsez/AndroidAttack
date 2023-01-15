.class Ljp/co/fullyear/WebSiteAppAKBNews/Main$3;
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
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    const-class v2, Ljp/co/fullyear/WebSiteAppAKBNews/BookMarkList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$3;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v1, v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
