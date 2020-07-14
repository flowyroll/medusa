.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d34b, %rdi
nop
nop
nop
cmp $44254, %r12
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
cmp %rbx, %rbx
lea addresses_normal_ht+0x1ce37, %rsi
lea addresses_UC_ht+0x9d8b, %rdi
nop
xor %rax, %rax
mov $64, %rcx
rep movsl
inc %rbx
lea addresses_D_ht+0x11a0b, %rax
nop
nop
nop
nop
and $37724, %r13
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
and $5993, %rcx
lea addresses_WC_ht+0xe88b, %rsi
lea addresses_A_ht+0x8acb, %rdi
clflush (%rdi)
nop
sub $8081, %r13
mov $116, %rcx
rep movsq
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xb50b, %rsi
lea addresses_UC_ht+0xf5cb, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $54, %rcx
rep movsw
and $63281, %rdi
lea addresses_A_ht+0xffcd, %rdi
nop
nop
nop
and $24828, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
sub $2911, %r12
lea addresses_UC_ht+0x183b, %rdi
inc %r13
movl $0x61626364, (%rdi)
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1d78b, %rsi
lea addresses_normal_ht+0x10efb, %rdi
xor $59191, %r10
mov $21, %rcx
rep movsw
add %rcx, %rcx
lea addresses_normal_ht+0x82bb, %r13
nop
nop
nop
nop
cmp $5393, %rax
mov (%r13), %di
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x19bab, %r13
nop
sub %rsi, %rsi
mov (%r13), %r12d
nop
cmp $8808, %r12
lea addresses_UC_ht+0x1d93b, %rdi
nop
nop
nop
cmp $29489, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub $1298, %r12
lea addresses_WT_ht+0x309b, %rsi
lea addresses_WT_ht+0xad5, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $73, %rcx
rep movsl
xor $29694, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1af8b, %rsi
lea addresses_WT+0x116f3, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $8, %rcx
rep movsq
nop
nop
nop
nop
add $8561, %rcx

// REPMOV
lea addresses_normal+0x150ab, %rsi
lea addresses_A+0x6c27, %rdi
clflush (%rsi)
cmp $49945, %r11
mov $99, %rcx
rep movsl
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0x1878b, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%rdi)
nop
nop
sub %rcx, %rcx

// Load
lea addresses_D+0x1ec6b, %rsi
and %rdi, %rdi
movb (%rsi), %cl
inc %r14

// Store
lea addresses_WC+0x4873, %rdi
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// REPMOV
lea addresses_WT+0x14c8b, %rsi
lea addresses_normal+0x938b, %rdi
nop
nop
nop
nop
add $30944, %r11
mov $68, %rcx
rep movsq
nop
nop
nop
mfence

// Faulty Load
lea addresses_A+0x778b, %r11
mfence
movb (%r11), %r14b
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'35': 418}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
