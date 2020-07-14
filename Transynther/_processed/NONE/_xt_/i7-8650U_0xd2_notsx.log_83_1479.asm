.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4acc, %rdi
nop
nop
nop
sub %rsi, %rsi
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
sub $12286, %r13
lea addresses_D_ht+0x1dab4, %r10
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%r10)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x30fb, %rsi
lea addresses_D_ht+0x4284, %rdi
nop
add $41114, %r10
mov $13, %rcx
rep movsw
nop
nop
nop
nop
xor $57404, %rbx
lea addresses_WC_ht+0x18eb4, %r11
nop
and $47801, %rcx
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x135b4, %r13
inc %rbx
mov (%r13), %rdi
xor $62140, %rcx
lea addresses_WT_ht+0x1a946, %rsi
lea addresses_WC_ht+0x7dd4, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r12, %r12
mov $27, %rcx
rep movsq
nop
nop
nop
nop
nop
add $475, %rsi
lea addresses_WC_ht+0x6cb4, %rdi
nop
nop
nop
nop
xor $39525, %r11
mov (%rdi), %esi
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x18474, %rsi
lea addresses_WT_ht+0x2fb4, %rdi
nop
nop
nop
cmp %r13, %r13
mov $87, %rcx
rep movsb
nop
nop
nop
add $3793, %r12
lea addresses_normal_ht+0x1d974, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x61, (%rdi)
nop
nop
add $10409, %rcx
lea addresses_WT_ht+0x1e1b4, %r13
add $56930, %rcx
movb (%r13), %r10b
nop
nop
nop
and $20531, %rdi
lea addresses_WT_ht+0x1a3b4, %rcx
nop
add $5254, %rsi
mov (%rcx), %r11w
dec %rbx
lea addresses_WC_ht+0x94cd, %r12
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%r12), %cl
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdx

// Store
lea addresses_normal+0x18bb4, %rdx
and $32725, %r15
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WC+0x123b4, %r12
xor %r14, %r14
mov (%r12), %r15w
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'38': 83}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
