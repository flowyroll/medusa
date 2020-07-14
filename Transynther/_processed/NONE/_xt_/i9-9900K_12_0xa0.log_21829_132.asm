.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e98f, %rsi
clflush (%rsi)
nop
nop
cmp $14438, %r14
mov (%rsi), %r10d
nop
and $13241, %rcx
lea addresses_WT_ht+0xe2ff, %rbp
nop
nop
dec %r15
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
and $33223, %rsi
lea addresses_D_ht+0x426d, %rcx
clflush (%rcx)
nop
nop
and $47984, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x19aef, %rcx
nop
nop
and %r10, %r10
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0xd2ff, %rcx
clflush (%rcx)
nop
nop
lfence
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xf2ad, %r10
nop
xor $42640, %rcx
movb (%r10), %r15b
nop
add %rbp, %rbp
lea addresses_WT_ht+0x179df, %rsi
lea addresses_WT_ht+0xe2ff, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $5, %rcx
rep movsw
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x164ff, %rdx
cmp %r10, %r10
mov (%rdx), %bp
nop
nop
nop
and $54176, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdi

// Store
lea addresses_WC+0x10ff, %r15
nop
nop
nop
nop
nop
cmp $34003, %r11
movl $0x51525354, (%r15)
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_A+0xe6ff, %r8
nop
nop
nop
nop
nop
dec %r11
movb (%r8), %r14b
nop
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_RW+0x116ff, %r8
nop
nop
nop
nop
cmp $41895, %rdi
mov (%r8), %r15d
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
