.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x108a2, %r14
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
add $24474, %rax
lea addresses_normal_ht+0x10b61, %r8
sub $44779, %r10
movw $0x6162, (%r8)
nop
and %r10, %r10
lea addresses_WT_ht+0x13d5e, %r8
nop
nop
nop
xor $12920, %rax
mov (%r8), %r14w
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xc6e2, %r8
nop
nop
cmp $28509, %rcx
movb (%r8), %r14b
nop
nop
nop
nop
cmp $20532, %r8
lea addresses_D_ht+0x7c62, %r10
nop
cmp %rbx, %rbx
movb (%r10), %cl
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xe74a, %rsi
lea addresses_A_ht+0x5062, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $11, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x12222, %rsi
lea addresses_normal_ht+0x1d062, %rdi
nop
and $47262, %r10
mov $124, %rcx
rep movsw
nop
and $64134, %rsi
lea addresses_D_ht+0xe922, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x18862, %rsi
lea addresses_normal_ht+0x14662, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
inc %r8
mov $88, %rcx
rep movsb
add $53407, %rsi
lea addresses_D_ht+0x13e9e, %rcx
nop
cmp $48426, %rdi
movl $0x61626364, (%rcx)
sub %r14, %r14
lea addresses_normal_ht+0xe062, %rbx
sub %r8, %r8
mov (%rbx), %r10w
and %r14, %r14
lea addresses_A_ht+0x7cde, %rsi
lea addresses_WC_ht+0xa37a, %rdi
nop
add %r10, %r10
mov $11, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1ece2, %rsi
lea addresses_A_ht+0x262, %rdi
nop
nop
xor %r8, %r8
mov $46, %rcx
rep movsb
nop
sub $10961, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1eb92, %r12
nop
nop
sub $5583, %r11
movb $0x51, (%r12)

// Exception!!!
nop
nop
nop
nop
xor %rcx, %rcx
div %rcx
nop
nop
and %r12, %r12

// REPMOV
lea addresses_RW+0x11c62, %rsi
lea addresses_RW+0x7946, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r12, %r12
mov $41, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_US+0x191e2, %r12
nop
nop
nop
nop
xor $32443, %rdi
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi

// Exception!!!
nop
nop
xor %rsi, %rsi
div %rsi
nop
nop
xor $59354, %r11

// REPMOV
lea addresses_WC+0x652b, %rsi
lea addresses_A+0x1a862, %rdi
nop
nop
nop
nop
nop
xor $38696, %rax
mov $54, %rcx
rep movsb
nop
nop
nop
xor $55029, %r12

// Store
lea addresses_D+0x18462, %r11
clflush (%r11)
nop
nop
sub $51149, %rcx
movw $0x5152, (%r11)
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_D+0x18462, %r11
nop
cmp %r14, %r14
mov (%r11), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'09': 1}
09
*/
