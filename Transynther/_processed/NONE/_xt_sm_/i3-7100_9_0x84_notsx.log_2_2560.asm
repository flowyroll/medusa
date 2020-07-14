.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x136b4, %rsi
lea addresses_D_ht+0x420b, %rdi
add %r13, %r13
mov $35, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x175a4, %rdx
nop
sub $26877, %rbp
movw $0x6162, (%rdx)
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x5bd8, %rdi
nop
nop
nop
nop
nop
xor $47840, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x19d24, %rcx
nop
nop
nop
nop
nop
add $46110, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp $27897, %rcx
lea addresses_A_ht+0x5984, %rsi
lea addresses_WT_ht+0xb984, %rdi
nop
nop
nop
nop
xor $36172, %r14
mov $122, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1c834, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add $41937, %rsi
mov (%r14), %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_A+0x7c04, %rcx
nop
nop
nop
nop
nop
add $62538, %rax
movw $0x5152, (%rcx)
nop
cmp $48208, %rbx

// Store
lea addresses_UC+0xd044, %r10
nop
nop
nop
nop
nop
and $46453, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
xor $40622, %r14

// Store
lea addresses_normal+0xdb84, %rax
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
xor $459, %rbx

// Store
lea addresses_normal+0x2f84, %rbx
nop
xor $4482, %r9
movb $0x51, (%rbx)
nop
nop
nop
nop
and $17078, %rbx

// Load
lea addresses_normal+0x1a244, %r13
nop
nop
nop
nop
nop
dec %r14
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0x1ef04, %r9
nop
nop
nop
nop
cmp $62135, %rax
movw $0x5152, (%r9)
nop
cmp %rcx, %rcx

// Store
lea addresses_normal+0x14184, %r13
nop
nop
nop
nop
dec %r9
movl $0x51525354, (%r13)
nop
nop
nop
nop
and $49443, %r13

// Store
mov $0x150ba80000000024, %rcx
nop
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %r13
nop
nop
nop
nop
nop
sub $59018, %rcx

// Store
lea addresses_D+0xfa0c, %rcx
nop
nop
nop
nop
and $60665, %r13
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $28708, %rbx

// Store
lea addresses_RW+0x19d84, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
movb $0x51, (%r10)
nop
nop
nop
dec %rax

// Store
lea addresses_A+0x2084, %r10
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r10)

// Exception!!!
mov (0), %rbx
cmp %rax, %rax

// Store
lea addresses_WC+0xdede, %rax
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%rax)
inc %rax

// Store
lea addresses_PSE+0x6184, %rax
nop
nop
add $21690, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
inc %r10

// Faulty Load
lea addresses_normal+0x14184, %r9
nop
nop
nop
nop
xor $60447, %r14
mov (%r9), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 2}
54 54
*/
