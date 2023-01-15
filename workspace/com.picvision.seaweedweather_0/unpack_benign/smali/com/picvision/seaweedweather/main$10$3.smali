.class Lcom/picvision/seaweedweather/main$10$3;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/main$10;

.field private final synthetic val$rbtn1:Landroid/widget/RadioButton;

.field private final synthetic val$rbtn2:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main$10;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$10$3;->this$1:Lcom/picvision/seaweedweather/main$10;

    iput-object p2, p0, Lcom/picvision/seaweedweather/main$10$3;->val$rbtn1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/picvision/seaweedweather/main$10$3;->val$rbtn2:Landroid/widget/RadioButton;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const-string v4, "checkedId"

    const-string v3, "Id"

    .line 929
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$10$3;->val$rbtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$10$3;->this$1:Lcom/picvision/seaweedweather/main$10;

    invoke-static {v0}, Lcom/picvision/seaweedweather/main$10;->access$0(Lcom/picvision/seaweedweather/main$10;)Lcom/picvision/seaweedweather/main;

    move-result-object v0

    const-string v1, "checkedId"

    invoke-virtual {v0, v4, v2}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Id"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$10$3;->val$rbtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$10$3;->this$1:Lcom/picvision/seaweedweather/main$10;

    invoke-static {v0}, Lcom/picvision/seaweedweather/main$10;->access$0(Lcom/picvision/seaweedweather/main$10;)Lcom/picvision/seaweedweather/main;

    move-result-object v0

    const-string v1, "checkedId"

    invoke-virtual {v0, v4, v2}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Id"

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
