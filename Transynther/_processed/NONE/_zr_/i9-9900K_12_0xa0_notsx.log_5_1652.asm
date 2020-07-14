.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ee77, %rax
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
nop
dec %rax
lea addresses_A_ht+0x40f1, %rsi
nop
nop
nop
nop
xor %r12, %r12
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x3277, %rsi
nop
nop
nop
sub %r9, %r9
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rbp
nop
sub %r9, %r9
lea addresses_WT_ht+0xc38b, %rsi
nop
nop
nop
nop
dec %r10
movb $0x61, (%rsi)
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xdf97, %rsi
lea addresses_UC_ht+0x13917, %rdi
nop
dec %rbp
mov $18, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x10ed8, %rsi
lea addresses_A_ht+0xb93, %rdi
cmp $38379, %r12
mov $50, %rcx
rep movsb
nop
nop
nop
nop
and $49707, %r13
lea addresses_WC_ht+0x1cd77, %rsi
lea addresses_A_ht+0x16c57, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $105, %rcx
rep movsl
nop
nop
add $48370, %r12
lea addresses_WT_ht+0x16b7, %rdi
nop
nop
cmp %rsi, %rsi
mov (%rdi), %cx
nop
nop
nop
nop
and $8427, %r12
lea addresses_UC_ht+0xa73f, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%rcx)
nop
nop
dec %rdi
lea addresses_normal_ht+0x191df, %rsi
and $34761, %r12
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1a8e7, %rsi
lea addresses_A_ht+0xd07f, %rdi
nop
nop
nop
dec %r13
mov $42, %rcx
rep movsw
nop
nop
nop
nop
xor $35040, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Load
mov $0x2696c0000000ce7, %r8
clflush (%r8)
nop
dec %rax
mov (%r8), %r12
nop
nop
sub $21231, %r12

// Load
lea addresses_WT+0xe977, %rax
clflush (%rax)
nop
sub $59191, %rbx
mov (%rax), %r8w
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_A+0x2077, %rax
nop
nop
inc %r10
mov (%rax), %cx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
