.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1afdf, %r10
clflush (%r10)
sub %r12, %r12
mov (%r10), %rsi
nop
nop
xor $20362, %r11
lea addresses_WT_ht+0x1eddf, %r8
nop
nop
nop
xor %r12, %r12
mov (%r8), %r13w
nop
nop
add $37512, %rsi
lea addresses_normal_ht+0x4ef7, %r13
nop
nop
nop
sub %r15, %r15
mov (%r13), %rsi
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1dadf, %rsi
lea addresses_WC_ht+0x19289, %rdi
nop
nop
nop
nop
xor $30802, %r10
mov $15, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x198df, %rsi
lea addresses_normal_ht+0x105ff, %rdi
nop
cmp %r10, %r10
mov $122, %rcx
rep movsw
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x1011f, %rsi
lea addresses_A_ht+0x6ea7, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $58, %rcx
rep movsw
nop
nop
nop
nop
sub $30388, %r10
lea addresses_A_ht+0x244b, %r12
nop
nop
cmp $56290, %rcx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x919f, %rsi
nop
and %rcx, %rcx
mov (%rsi), %edi
cmp $58409, %r10
lea addresses_WC_ht+0x1a4df, %r8
and %r12, %r12
movl $0x61626364, (%r8)
nop
sub $15803, %r10
lea addresses_WC_ht+0x17cff, %rsi
lea addresses_UC_ht+0xa8df, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
add %r15, %r15
mov $19, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0xee9f, %r15
nop
add $30948, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x193bf, %rsi
lea addresses_D_ht+0xa21f, %rdi
nop
nop
nop
nop
inc %r13
mov $32, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_UC_ht+0x50df, %r15
clflush (%r15)
nop
nop
nop
nop
nop
dec %r12
movb (%r15), %r13b
add $13463, %r15
lea addresses_D_ht+0xbfef, %rsi
lea addresses_D_ht+0x1d71f, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $11, %rcx
rep movsb
nop
inc %r10
lea addresses_WC_ht+0x1a4df, %rsi
lea addresses_WC_ht+0x34df, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $12964, %r10
mov $23, %rcx
rep movsb
nop
nop
add $28629, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Load
mov $0x21f, %r12
nop
nop
sub $29237, %r15
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
nop
xor $38285, %r15

// Faulty Load
lea addresses_D+0x150df, %r12
nop
nop
dec %r14
mov (%r12), %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'36': 16}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
