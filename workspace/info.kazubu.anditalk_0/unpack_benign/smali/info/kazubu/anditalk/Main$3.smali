.class Linfo/kazubu/anditalk/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/kazubu/anditalk/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/kazubu/anditalk/Main;


# direct methods
.method constructor <init>(Linfo/kazubu/anditalk/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Linfo/kazubu/anditalk/Main$3;->this$0:Linfo/kazubu/anditalk/Main;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 114
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$3;->this$0:Linfo/kazubu/anditalk/Main;

    invoke-static {v0}, Linfo/kazubu/anditalk/Main;->access$3(Linfo/kazubu/anditalk/Main;)V

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
