.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a88, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %rdi, %rdi
mov (%rsi), %r8w
nop
add %r9, %r9
lea addresses_WC_ht+0x18548, %rsi
lea addresses_normal_ht+0x1e828, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
add $8946, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdx

// Store
lea addresses_WT+0x138c8, %r14
sub %r13, %r13
movw $0x5152, (%r14)
nop
nop
inc %r12

// Store
lea addresses_US+0x27c8, %rax
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
and $42242, %r12

// Store
lea addresses_UC+0xc118, %rax
nop
dec %r12
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %rdx
nop
nop
sub %rdx, %rdx

// Load
lea addresses_WC+0x1dc28, %r12
nop
dec %rax
mov (%r12), %dx
nop
nop
nop
nop
nop
add $39470, %r8

// Store
lea addresses_RW+0xfcaa, %r13
nop
nop
and $18311, %r15
movl $0x51525354, (%r13)
nop
cmp $31712, %r12

// Faulty Load
lea addresses_PSE+0x1b128, %r14
nop
nop
nop
nop
nop
add %r8, %r8
mov (%r14), %r15d
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'33': 21}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
