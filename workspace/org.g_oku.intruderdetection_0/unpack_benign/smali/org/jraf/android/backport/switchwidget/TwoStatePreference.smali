.class public abstract Lorg/jraf/android/backport/switchwidget/TwoStatePreference;
.super Landroid/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 71
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 75
    .local v0, "newValue":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :goto_1
    return-void

    .line 71
    .end local v0    # "newValue":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    .restart local v0    # "newValue":Z
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 274
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 271
    check-cast v0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;

    .line 272
    .local v0, "myState":Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    iget-boolean v1, v0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 253
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 258
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 259
    .local v0, "myState":Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 260
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->setChecked(Z)V

    .line 197
    return-void

    .line 196
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 89
    iput-boolean p1, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    .line 90
    invoke-virtual {p0, p1}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->persistBoolean(Z)Z

    .line 91
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 92
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->notifyChanged()V

    .line 94
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mDisableDependentsState:Z

    .line 186
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->notifyChanged()V

    .line 149
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->notifyChanged()V

    .line 121
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    iget-boolean v3, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    .line 108
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return v1

    .line 107
    .end local v0    # "shouldDisable":Z
    :cond_0
    iget-boolean v3, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v0    # "shouldDisable":Z
    :cond_2
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 220
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 222
    const/4 v3, 0x1

    .line 223
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 224
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v3, 0x0

    .line 231
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 233
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const/4 v3, 0x0

    .line 239
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 240
    .local v0, "newVisibility":I
    if-nez v3, :cond_2

    .line 242
    const/4 v0, 0x0

    .line 244
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 245
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_3
    return-void

    .line 226
    .restart local v3    # "useDefaultSummary":Z
    :cond_4
    iget-boolean v4, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lorg/jraf/android/backport/switchwidget/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const/4 v3, 0x0

    goto :goto_0
.end method
