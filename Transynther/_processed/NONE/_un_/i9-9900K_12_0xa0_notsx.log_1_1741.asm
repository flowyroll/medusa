.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x6ea, %rsi
lea addresses_normal_ht+0x8736, %rdi
nop
xor %rbx, %rbx
mov $2, %rcx
rep movsb
nop
inc %r13
lea addresses_UC_ht+0x152c2, %r11
clflush (%r11)
nop
nop
nop
nop
sub %rax, %rax
mov (%r11), %ecx
nop
nop
nop
sub $13059, %rcx
lea addresses_WC_ht+0x1a054, %rsi
lea addresses_D_ht+0x24aa, %rdi
nop
nop
mfence
mov $31, %rcx
rep movsq
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1ceea, %rcx
inc %r13
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
add $1432, %rsi
lea addresses_A_ht+0x5eea, %rsi
lea addresses_A_ht+0xf6ea, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $76, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x52ea, %r14
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r14), %di
dec %r14
lea addresses_D_ht+0x4bea, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r13), %eax
nop
nop
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x3eea, %rsi
nop
nop
nop
nop
nop
inc %r12
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
cmp $29726, %rdx

// REPMOV
lea addresses_D+0xb0ea, %rsi
lea addresses_A+0x105ea, %rdi
nop
nop
nop
nop
cmp $10789, %r15
mov $123, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_PSE+0x304a, %rbx
nop
nop
nop
nop
cmp $41342, %rdi
movb $0x51, (%rbx)
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_D+0xe6ea, %rbx
nop
nop
inc %rdx
movb (%rbx), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'09': 1}
09
*/
