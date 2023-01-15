.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$18;
.super Ljava/lang/Object;
.source "RecipeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$18;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 939
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 940
    return-void
.end method
