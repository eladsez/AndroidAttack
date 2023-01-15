.class Linfo/kazubu/anditalk/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Linfo/kazubu/anditalk/Main$2;->this$0:Linfo/kazubu/anditalk/Main;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Linfo/kazubu/anditalk/Main$2;->this$0:Linfo/kazubu/anditalk/Main;

    invoke-static {v0}, Linfo/kazubu/anditalk/Main;->access$3(Linfo/kazubu/anditalk/Main;)V

    .line 105
    return-void
.end method
