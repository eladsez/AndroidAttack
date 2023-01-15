.class public Lorg/jraf/android/backport/switchwidget/SwitchPreference;
.super Lorg/jraf/android/backport/switchwidget/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;-><init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;)V

    iput-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mListener:Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    sget v0, Lorg/jraf/android/backport/switchwidget/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v1, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;-><init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;)V

    iput-object v1, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mListener:Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;

    .line 83
    sget-object v1, Lorg/jraf/android/backport/switchwidget/R$styleable;->SwitchPreference:[I

    sget v2, Lorg/jraf/android/backport/switchwidget/R$attr;->switchPreferenceStyle:I

    .line 82
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v1, 0x4

    .line 89
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setDisableDependentsState(Z)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 120
    sget v2, Lorg/jraf/android/backport/switchwidget/R$id;->switchWidget:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/jraf/android/backport/switchwidget/Switch;

    .line 121
    .local v0, "checkableView":Lorg/jraf/android/backport/switchwidget/Switch;
    if-eqz v0, :cond_0

    .line 122
    iget-boolean v2, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 129
    move-object v1, v0

    .line 130
    .local v1, "switchView":Lorg/jraf/android/backport/switchwidget/Switch;
    iget-object v2, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lorg/jraf/android/backport/switchwidget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lorg/jraf/android/backport/switchwidget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mListener:Lorg/jraf/android/backport/switchwidget/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lorg/jraf/android/backport/switchwidget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    .end local v1    # "switchView":Lorg/jraf/android/backport/switchwidget/Switch;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->notifyChanged()V

    .line 161
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->notifyChanged()V

    .line 149
    return-void
.end method
