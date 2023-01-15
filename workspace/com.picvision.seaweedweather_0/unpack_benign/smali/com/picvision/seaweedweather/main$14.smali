.class Lcom/picvision/seaweedweather/main$14;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->age_setting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;

.field private final synthetic val$rbtn1:Landroid/widget/RadioButton;

.field private final synthetic val$rbtn2:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$14;->this$0:Lcom/picvision/seaweedweather/main;

    iput-object p2, p0, Lcom/picvision/seaweedweather/main$14;->val$rbtn1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/picvision/seaweedweather/main$14;->val$rbtn2:Landroid/widget/RadioButton;

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, 0x0

    const-string v4, "checkedId"

    const-string v3, "Id"

    .line 1089
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$14;->val$rbtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$14;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v1, "checkedId"

    invoke-virtual {v0, v4, v2}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Id"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$14;->val$rbtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$14;->this$0:Lcom/picvision/seaweedweather/main;

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
