.class public abstract enum Lcom/google/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/google/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DOTS:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 37
    new-instance v0, Lcom/google/gson/FieldNamingPolicy$1;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 53
    new-instance v1, Lcom/google/gson/FieldNamingPolicy$2;

    const-string v3, "UPPER_CAMEL_CASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

    .line 72
    new-instance v3, Lcom/google/gson/FieldNamingPolicy$3;

    const-string v5, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;

    .line 90
    new-instance v5, Lcom/google/gson/FieldNamingPolicy$4;

    const-string v7, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 113
    new-instance v7, Lcom/google/gson/FieldNamingPolicy$5;

    const-string v9, "LOWER_CASE_WITH_DASHES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

    .line 136
    new-instance v9, Lcom/google/gson/FieldNamingPolicy$6;

    const-string v11, "LOWER_CASE_WITH_DOTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/gson/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lcom/google/gson/FieldNamingPolicy;

    .line 31
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/gson/FieldNamingPolicy;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/FieldNamingPolicy$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/gson/FieldNamingPolicy$1;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "translation":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_a
    if-ge v1, v2, :cond_25

    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 150
    .local v3, "character":C
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .end local v3    # "character":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 155
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "firstLetterIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 164
    .local v1, "limit":I
    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_16

    if-ge v0, v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 166
    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 167
    .local v3, "firstLetter":C
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 168
    return-object p0

    .line 171
    :cond_21
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 172
    .local v4, "uppercased":C
    if-nez v0, :cond_3d

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 176
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/FieldNamingPolicy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/google/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/FieldNamingPolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/gson/FieldNamingPolicy;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/google/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/FieldNamingPolicy;

    return-object v0
.end method
