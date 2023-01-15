.class Lorg/hermit/android/core/Errors$1;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/Errors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/core/Errors;


# direct methods
.method constructor <init>(Lorg/hermit/android/core/Errors;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/core/Errors$1;->this$0:Lorg/hermit/android/core/Errors;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 176
    invoke-static {}, Lorg/hermit/android/core/Errors;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/hermit/android/core/Errors$1;->this$0:Lorg/hermit/android/core/Errors;

    invoke-static {v0}, Lorg/hermit/android/core/Errors;->access$1(Lorg/hermit/android/core/Errors;)Landroid/content/Context;

    move-result-object p0

    .end local p0    # "this":Lorg/hermit/android/core/Errors$1;
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 178
    :cond_0
    return-void
.end method
