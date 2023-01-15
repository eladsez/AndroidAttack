.class Lcom/djavid/puppypet_es/RatingHelper$2;
.super Ljava/lang/Object;
.source "RatingHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/djavid/puppypet_es/RatingHelper;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$dialog:Landroid/app/Dialog;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/djavid/puppypet_es/RatingHelper;->access$0(Landroid/content/SharedPreferences$Editor;)V

    .line 200
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/djavid/puppypet_es/RatingHelper;->access$3(Landroid/content/SharedPreferences$Editor;)V

    .line 201
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/djavid/puppypet_es/RatingHelper;->access$4(Landroid/content/SharedPreferences$Editor;)V

    .line 206
    iget-object v0, p0, Lcom/djavid/puppypet_es/RatingHelper$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass a valid SharedPreferences Editor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
