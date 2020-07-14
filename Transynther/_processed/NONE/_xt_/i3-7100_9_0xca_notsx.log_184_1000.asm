.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x471c, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%r9)
nop
and $35442, %r12
lea addresses_A_ht+0x1be1c, %rsi
nop
sub %rbp, %rbp
mov (%rsi), %ebx
sub $21045, %r12
lea addresses_D_ht+0x1ba24, %rbx
nop
nop
xor %rbp, %rbp
movb (%rbx), %r9b
nop
add %rbp, %rbp
lea addresses_D_ht+0x201c, %rsi
lea addresses_normal_ht+0xef1c, %rdi
nop
xor %r15, %r15
mov $27, %rcx
rep movsq
nop
nop
nop
nop
sub $47697, %r15
lea addresses_normal_ht+0x1519c, %rsi
lea addresses_UC_ht+0x1b02d, %rdi
nop
cmp $3018, %r9
mov $74, %rcx
rep movsw
nop
nop
nop
nop
sub $44397, %r9
lea addresses_WC_ht+0x2164, %r15
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%r15)
dec %r12
lea addresses_normal_ht+0x1b71c, %rbx
nop
nop
nop
and $22715, %r12
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor $38938, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_PSE+0x1ab1c, %rax
nop
nop
nop
nop
xor %rsi, %rsi
movb (%rax), %r8b
cmp %rbx, %rbx

// Store
mov $0x35474e0000000be4, %r10
clflush (%r10)
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)

// Exception!!!
mov (0), %r10
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x12640, %rsi
nop
nop
xor $37890, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rsi)
nop
cmp %rax, %rax

// Store
lea addresses_UC+0x10bc, %r8
nop
nop
and $59593, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
sub $55940, %r8

// Faulty Load
lea addresses_normal+0x1671c, %rax
nop
nop
inc %rcx
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'34': 184}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
