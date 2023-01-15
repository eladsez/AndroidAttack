.class Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/fullyear/WebSiteAppAKBNews/Main;->DialogDatePicker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

.field private final synthetic val$Tel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/co/fullyear/WebSiteAppAKBNews/Main;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    iput-object p2, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;->val$Tel:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    .line 136
    const-string v1, "android.intent.action.CALL"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;->val$Tel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 135
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/co/fullyear/WebSiteAppAKBNews/Main$5;->this$0:Ljp/co/fullyear/WebSiteAppAKBNews/Main;

    invoke-virtual {v1, v0}, Ljp/co/fullyear/WebSiteAppAKBNews/Main;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method
