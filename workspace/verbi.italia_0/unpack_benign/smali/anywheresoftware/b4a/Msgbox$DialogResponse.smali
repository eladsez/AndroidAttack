.class public Lanywheresoftware/b4a/Msgbox$DialogResponse;
.super Ljava/lang/Object;
.source "Msgbox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/Msgbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogResponse"
.end annotation


# instance fields
.field private dismiss:Z

.field public res:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "dismissAfterClick"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x3

    iput v0, p0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    .line 112
    iput-boolean p1, p0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->dismiss:Z

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iput p2, p0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    .line 117
    iget-boolean v0, p0, Lanywheresoftware/b4a/Msgbox$DialogResponse;->dismiss:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lanywheresoftware/b4a/Msgbox;->access$0()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/Msgbox$DialogResponse;
    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    :cond_0
    return-void
.end method
