.class Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;
.super Ljava/lang/Object;
.source "CompoundButtonWrapper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioButtonListener"
.end annotation


# instance fields
.field private ba:Lanywheresoftware/b4a/BA;

.field private current:Landroid/widget/RadioButton;

.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "ba"    # Lanywheresoftware/b4a/BA;
    .param p3, "current"    # Landroid/widget/RadioButton;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->eventName:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->ba:Lanywheresoftware/b4a/BA;

    .line 123
    iput-object p3, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->current:Landroid/widget/RadioButton;

    .line 124
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->current:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 131
    .local v11, "vp":Landroid/view/ViewParent;
    instance-of v1, v11, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 132
    move-object v0, v11

    check-cast v0, Landroid/view/ViewGroup;

    move-object v10, v0

    .line 133
    .local v10, "vg":Landroid/view/ViewGroup;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v7, v1, :cond_3

    .line 144
    .end local v7    # "i":I
    .end local v10    # "vg":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->eventName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    iget-object v1, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->ba:Lanywheresoftware/b4a/BA;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->current:Landroid/widget/RadioButton;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_checkedchange"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v6, v3

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    .restart local v7    # "i":I
    .restart local v10    # "vg":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 135
    .local v9, "v":Landroid/view/View;
    instance-of v1, v9, Landroid/widget/RadioButton;

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lanywheresoftware/b4a/objects/CompoundButtonWrapper$RadioButtonWrapper$RadioButtonListener;->current:Landroid/widget/RadioButton;

    if-eq v9, v1, :cond_4

    .line 137
    move-object v0, v9

    check-cast v0, Landroid/widget/RadioButton;

    move-object v8, v0

    .line 138
    .local v8, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v8}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-virtual {v8, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    .end local v8    # "rb":Landroid/widget/RadioButton;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
