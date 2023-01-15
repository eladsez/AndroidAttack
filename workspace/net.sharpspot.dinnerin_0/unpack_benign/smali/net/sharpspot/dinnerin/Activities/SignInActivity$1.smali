.class Lnet/sharpspot/dinnerin/Activities/SignInActivity$1;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/SignInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->access$0(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->access$1(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V

    goto :goto_0
.end method
