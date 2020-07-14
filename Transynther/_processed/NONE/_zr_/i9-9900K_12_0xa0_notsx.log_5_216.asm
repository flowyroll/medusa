.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb7d7, %rsi
lea addresses_A_ht+0x17b17, %rdi
clflush (%rdi)
nop
nop
nop
sub $29343, %r15
mov $105, %rcx
rep movsq
add %rax, %rax
lea addresses_A_ht+0x17623, %rbp
clflush (%rbp)
nop
nop
nop
and $39060, %rax
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
xor $45405, %rdi
lea addresses_normal_ht+0x1b7b7, %rax
nop
nop
nop
add $35214, %rcx
movb $0x61, (%rax)
nop
sub $65100, %rsi
lea addresses_D_ht+0x786f, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rcx), %r15b
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x4917, %rsi
lea addresses_WC_ht+0xe4f, %rdi
nop
nop
nop
nop
dec %rax
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1e317, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov (%rdi), %bp
nop
nop
nop
nop
nop
add $28976, %rsi
lea addresses_WT_ht+0x1346f, %rsi
lea addresses_WT_ht+0x17377, %rdi
nop
nop
nop
nop
add $13125, %rbx
mov $67, %rcx
rep movsl
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0xe317, %rcx
and $49279, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rcx)
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0xbc57, %rdi
nop
nop
nop
nop
nop
and $20349, %rbp
mov (%rdi), %esi
nop
nop
nop
and $16130, %r15
lea addresses_UC_ht+0x91d7, %rsi
lea addresses_D_ht+0xb697, %rdi
nop
nop
dec %rbx
mov $115, %rcx
rep movsb
nop
nop
nop
nop
nop
add $53830, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x1ed17, %rsi
nop
nop
nop
nop
nop
sub %rax, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
inc %rcx

// Load
lea addresses_RW+0x17e57, %r15
nop
sub %rdx, %rdx
mov (%r15), %eax
nop
nop
nop
add $17762, %r15

// Load
lea addresses_D+0x28f7, %r15
cmp %r12, %r12
mov (%r15), %rsi
nop
xor $29547, %rdx

// Store
lea addresses_UC+0x1fa97, %rax
xor $11834, %r12
movw $0x5152, (%rax)
xor $41470, %rdx

// Load
lea addresses_A+0x1b17, %r15
add %rax, %rax
mov (%r15), %cx
nop
nop
and $34227, %r12

// Load
lea addresses_A+0x1af7, %r15
xor %rax, %rax
mov (%r15), %di
nop
xor %r15, %r15

// Store
lea addresses_WT+0x13027, %r12
nop
nop
nop
nop
cmp $27582, %r15
movb $0x51, (%r12)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_PSE+0x1699f, %rax
nop
nop
nop
nop
xor $27313, %rdi
movl $0x51525354, (%rax)
and %r15, %r15

// Store
lea addresses_UC+0x1b597, %r12
nop
nop
add %rdi, %rdi
movw $0x5152, (%r12)
nop
cmp $15392, %r12

// Faulty Load
lea addresses_A+0x1b17, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov (%rdi), %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
