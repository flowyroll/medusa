.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe02, %rsi
lea addresses_A_ht+0xab82, %rdi
nop
nop
nop
inc %r14
mov $43, %rcx
rep movsw
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x3d42, %r11
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%r11)
nop
sub $50180, %r12
lea addresses_WC_ht+0x3fb2, %rsi
lea addresses_WT_ht+0xa682, %rdi
nop
nop
sub $4854, %r11
mov $32, %rcx
rep movsq
nop
nop
nop
add $43873, %rsi
lea addresses_normal_ht+0x1dfce, %r11
nop
nop
nop
nop
nop
xor $38506, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r11)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x7342, %rsi
lea addresses_UC_ht+0x8382, %rdi
nop
dec %rbx
mov $0, %rcx
rep movsb
nop
nop
and $6617, %rbx
lea addresses_A_ht+0xdaaa, %rsi
lea addresses_WT_ht+0x146c2, %rdi
nop
nop
nop
nop
sub $2693, %r12
mov $29, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x10cc2, %r11
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1b01c, %r12
nop
nop
nop
nop
nop
xor $18440, %r11
movw $0x6162, (%r12)
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0xd242, %rdx
nop
nop
cmp $8677, %r14
mov (%rdx), %bx
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rdx
push %rsi

// Faulty Load
lea addresses_RW+0x7382, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $38127, %rdx
mov (%r15), %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'32': 9}
32 32 32 32 32 32 32 32 32
*/
