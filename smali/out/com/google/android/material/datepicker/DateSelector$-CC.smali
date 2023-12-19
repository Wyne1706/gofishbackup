.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$-CC;
.super Ljava/lang/Object;
.source "DateSelector.java"


# direct methods
.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V
    .registers 8
    .param p0, "editTexts"    # [Landroid/widget/EditText;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 137
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p0, v2

    .line 138
    .local v3, "editText":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 139
    return-void

    .line 137
    .end local v3    # "editText":Landroid/widget/EditText;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    :cond_11
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    .line 143
    return-void
.end method

.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$1(Landroid/view/View;)V
    .registers 2
    .param p0, "viewToFocus"    # Landroid/view/View;

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method public static varargs showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V
    .registers 6
    .param p0, "editTexts"    # [Landroid/widget/EditText;

    .line 131
    array-length v0, p0

    if-nez v0, :cond_4

    .line 132
    return-void

    .line 135
    :cond_4
    new-instance v0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;-><init>([Landroid/widget/EditText;)V

    .line 145
    .local v0, "listener":Landroid/view/View$OnFocusChangeListener;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    .line 146
    .local v4, "editText":Landroid/widget/EditText;
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    .end local v4    # "editText":Landroid/widget/EditText;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 150
    :cond_16
    aget-object v1, p0, v2

    .line 151
    .local v1, "viewToFocus":Landroid/view/View;
    new-instance v2, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method
