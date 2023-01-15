.class Ljp/co/fullyear/WebSiteAppAKBNews/Main$AndroidBridge;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidBridge"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$AndroidBridge;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public js(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$AndroidBridge;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v1, v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
