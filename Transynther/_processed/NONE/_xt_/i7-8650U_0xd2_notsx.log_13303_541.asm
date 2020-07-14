.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf437, %rbx
nop
nop
cmp $40811, %r12
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x52c3, %r8
nop
nop
nop
and $27353, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1bf37, %rsi
lea addresses_A_ht+0x5e37, %rdi
nop
inc %rdx
mov $5, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x153f7, %rsi
lea addresses_WT_ht+0xb019, %rdi
add $55958, %rdx
mov $108, %rcx
rep movsl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x15237, %rcx
nop
nop
nop
mfence
movl $0x61626364, (%rcx)
nop
nop
dec %r8
lea addresses_normal_ht+0x131ff, %rsi
lea addresses_WC_ht+0xc6b7, %rdi
nop
nop
nop
nop
cmp $24601, %r13
mov $7, %rcx
rep movsw
nop
sub %r12, %r12
lea addresses_WT_ht+0x31e7, %rbx
sub %r8, %r8
movb (%rbx), %r13b
and $32778, %rbx
lea addresses_normal_ht+0x175ad, %rdi
nop
sub %rbx, %rbx
mov (%rdi), %r12w
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x8c37, %rsi
lea addresses_WT_ht+0x8037, %rdi
nop
nop
xor $47827, %r8
mov $81, %rcx
rep movsb
cmp %rcx, %rcx
lea addresses_WC_ht+0x15eb7, %rdi
xor %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x17e17, %rsi
lea addresses_normal_ht+0x4fff, %rdi
nop
cmp $37654, %rdx
mov $68, %rcx
rep movsw
cmp $8132, %r13
lea addresses_WC_ht+0xcadd, %rsi
lea addresses_D_ht+0x1c437, %rdi
nop
nop
nop
xor %r8, %r8
mov $114, %rcx
rep movsl
nop
sub %r12, %r12
lea addresses_WC_ht+0x1eb4f, %rdi
inc %rsi
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x140f7, %rsi
lea addresses_D_ht+0x16f37, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $43964, %r13
mov $21, %rcx
rep movsb
xor $9523, %rcx
lea addresses_D_ht+0x99d7, %rsi
lea addresses_D_ht+0x15867, %rdi
nop
and $19231, %rdx
mov $69, %rcx
rep movsw
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xfab7, %rsi
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
and %rsi, %rsi

// Load
lea addresses_WT+0x4c37, %rsi
nop
nop
nop
nop
xor %r11, %r11
mov (%rsi), %r9d
sub %r11, %r11

// REPMOV
lea addresses_WC+0x101ef, %rsi
lea addresses_WC+0x5837, %rdi
cmp $33151, %rax
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $36651, %rsi

// Load
lea addresses_normal+0x17437, %r9
nop
nop
nop
nop
nop
and $8059, %rsi
mov (%r9), %eax
nop
add $55309, %rdi

// Store
lea addresses_A+0x20b7, %r9
nop
nop
nop
nop
nop
cmp $59424, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
nop
nop
nop
dec %r9

// REPMOV
lea addresses_WT+0x1ab37, %rsi
lea addresses_D+0x15067, %rdi
nop
nop
add $33281, %rbp
mov $108, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0x1f527, %rcx
clflush (%rcx)
nop
and $50778, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
and $22731, %rdi

// Store
lea addresses_A+0xad37, %rcx
sub %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
xor $44538, %r10

// Store
lea addresses_PSE+0x6837, %r9
nop
xor $47587, %rsi
movb $0x51, (%r9)
xor $53382, %rax

// Store
lea addresses_PSE+0x11437, %rsi
add %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor $54209, %rsi

// Faulty Load
lea addresses_WT+0x4c37, %r9
nop
nop
nop
nop
cmp $51522, %rbp
mov (%r9), %eax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'39': 13303}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
