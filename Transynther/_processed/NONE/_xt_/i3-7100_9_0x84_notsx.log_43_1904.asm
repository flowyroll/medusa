.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf682, %r10
nop
nop
nop
xor $27193, %r11
mov (%r10), %rcx
nop
nop
nop
nop
cmp $60841, %rdi
lea addresses_WT_ht+0x1b38, %rbx
clflush (%rbx)
nop
and $35462, %rsi
mov (%rbx), %rbp
nop
and $17565, %r10
lea addresses_A_ht+0x9ca8, %rdi
nop
nop
sub $33627, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
dec %r11
lea addresses_D_ht+0x218, %rsi
lea addresses_WT_ht+0x1ab38, %rdi
nop
nop
sub %r10, %r10
mov $119, %rcx
rep movsl
nop
nop
nop
xor $52066, %rcx
lea addresses_normal_ht+0x7ada, %rsi
lea addresses_WC_ht+0x96b8, %rdi
clflush (%rdi)
nop
and $53819, %r11
mov $52, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x13aec, %rsi
lea addresses_WT_ht+0x5298, %rdi
inc %rdx
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x16038, %rsi
lea addresses_normal_ht+0x10a68, %rdi
nop
nop
nop
nop
lfence
mov $107, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x4838, %rsi
lea addresses_A_ht+0x8038, %rdi
nop
nop
nop
and $64971, %rbx
mov $97, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x1e838, %r13
nop
nop
nop
nop
nop
cmp $12959, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovaps %ymm7, (%r13)
nop
inc %r13

// Store
lea addresses_normal+0x9738, %rbx
nop
cmp $42338, %rbp
movl $0x51525354, (%rbx)
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_normal+0x4038, %rbx
nop
nop
add %rsi, %rsi
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'34': 43}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
