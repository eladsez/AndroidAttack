.class Lnet/sharpspot/dinnerin/Activities/SignInActivity$3;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    const-class v3, Lnet/sharpspot/dinnerin/DataSyncService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    return-void
.end method
