.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5bd1, %rsi
lea addresses_WC_ht+0xe1c1, %rdi
nop
nop
nop
and $56885, %rbp
mov $12, %rcx
rep movsq
nop
nop
nop
nop
sub $46277, %r14
lea addresses_D_ht+0x107a1, %r10
nop
cmp $36583, %r14
mov (%r10), %bp
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1b9c1, %rsi
lea addresses_A_ht+0x1b1c1, %rdi
clflush (%rdi)
nop
nop
nop
sub %r15, %r15
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $17719, %r10
lea addresses_A_ht+0xafc1, %rsi
lea addresses_WC_ht+0x11c1, %rdi
nop
nop
nop
nop
inc %rax
mov $73, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_normal_ht+0x16309, %rcx
nop
nop
nop
sub $4864, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
add %rax, %rax
lea addresses_A_ht+0xb5c1, %r14
nop
nop
nop
nop
cmp $8043, %r15
movw $0x6162, (%r14)
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x16bc1, %rsi
lea addresses_WC_ht+0x15be1, %rdi
nop
sub $27425, %rax
mov $35, %rcx
rep movsb
inc %rdi
lea addresses_UC_ht+0x21c1, %r15
nop
nop
nop
nop
add $1868, %rsi
mov (%r15), %rbp
nop
nop
and $60550, %rdi
lea addresses_WT_ht+0xa932, %rsi
lea addresses_A_ht+0x156c1, %rdi
nop
nop
cmp $6767, %r15
mov $99, %rcx
rep movsw
nop
nop
and $19890, %r14
lea addresses_UC_ht+0x3dc1, %rsi
lea addresses_WC_ht+0x198c1, %rdi
nop
nop
nop
nop
add $2264, %rax
mov $75, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x16c1, %rsi
lea addresses_normal_ht+0x17c75, %rdi
clflush (%rdi)
nop
nop
and %r14, %r14
mov $6, %rcx
rep movsl
nop
sub %rax, %rax
lea addresses_WC_ht+0x12631, %rsi
nop
nop
nop
sub $46703, %r14
movb $0x61, (%rsi)
nop
nop
xor $59170, %rdi
lea addresses_WC_ht+0xb9c1, %rbp
xor %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x1c1, %rcx
nop
lfence
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WT+0x13201, %rcx
nop
nop
and %rdx, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_normal+0x16441, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $45134, %r14
movb $0x51, (%r13)
and $37790, %rcx

// Store
lea addresses_A+0xa2a1, %rbx
nop
nop
nop
nop
xor $47310, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Load
mov $0x5f6, %rsi
cmp %r13, %r13
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
add $27969, %rcx

// Store
lea addresses_UC+0x8681, %rsi
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
nop
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_WC+0x131c1, %r10
add $38008, %rdx
mov (%r10), %ebx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': True, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
