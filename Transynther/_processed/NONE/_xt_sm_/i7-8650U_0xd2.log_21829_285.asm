.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x58c8, %rsi
lea addresses_WT_ht+0x48c8, %rdi
nop
nop
cmp %r9, %r9
mov $33, %rcx
rep movsl
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x16eac, %r14
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r14)
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x148c8, %rcx
nop
add $3571, %r12
movb (%rcx), %r14b
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x40b2, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%r12)
nop
xor $10464, %r9
lea addresses_WT_ht+0x1acc8, %r12
sub %rsi, %rsi
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1b0, %rsi
lea addresses_WT_ht+0x83c8, %rdi
nop
nop
nop
add %r11, %r11
mov $52, %rcx
rep movsw
sub %rdx, %rdx
lea addresses_A_ht+0x848f, %r12
nop
nop
nop
and $28766, %r11
mov (%r12), %edx
add $2425, %rsi
lea addresses_WT_ht+0x88c8, %rcx
nop
add %rdx, %rdx
mov (%rcx), %si
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x17736, %rsi
lea addresses_WC_ht+0xbec8, %rdi
nop
nop
nop
add $51107, %r14
mov $81, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xa748, %rsi
nop
nop
nop
nop
nop
dec %r12
mov (%rsi), %r14
nop
nop
and %r9, %r9
lea addresses_A_ht+0x2cc8, %r9
nop
nop
xor %r11, %r11
mov (%r9), %cx
nop
nop
sub $22795, %rdx
lea addresses_UC_ht+0x51c8, %r11
nop
nop
nop
sub %rcx, %rcx
movups (%r11), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x2044, %rsi
lea addresses_WT_ht+0x70c8, %rdi
clflush (%rdi)
nop
nop
nop
cmp $13010, %rdx
mov $83, %rcx
rep movsw
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_UC+0x148c8, %r12
add %rdx, %rdx
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0x148c8, %r14
nop
nop
nop
and $61734, %rcx
movb $0x51, (%r14)
nop
nop
cmp $9936, %rbx

// Faulty Load
lea addresses_WC+0x148c8, %r12
inc %r8
mov (%r12), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
