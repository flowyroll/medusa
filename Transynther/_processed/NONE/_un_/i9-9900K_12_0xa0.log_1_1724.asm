.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1af09, %r8
nop
and $41497, %r9
mov (%r8), %r15w
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x1a709, %r10
cmp $60322, %rbx
mov (%r10), %rdx
sub $25424, %rdx
lea addresses_A_ht+0x593b, %rdx
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%rdx), %r15w
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1e7c9, %rsi
lea addresses_UC_ht+0x3c09, %rdi
clflush (%rsi)
nop
xor %rbx, %rbx
mov $69, %rcx
rep movsq
nop
sub $58688, %r10
lea addresses_UC_ht+0x18cd9, %rdi
clflush (%rdi)
nop
sub $41261, %r15
movl $0x61626364, (%rdi)
nop
nop
cmp $27089, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x82b8a0000000436, %rsi
add $36850, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_D+0x16709, %rsi
lea addresses_US+0x815d, %rdi
nop
nop
nop
nop
nop
and $16355, %r14
mov $28, %rcx
rep movsq
sub %r14, %r14

// Store
mov $0x1dfcd80000000a09, %r10
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
dec %rsi

// Store
lea addresses_WT+0xc89, %rcx
nop
add $63091, %rdx
movb $0x51, (%rcx)
and %rsi, %rsi

// Store
lea addresses_UC+0x14709, %r12
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
xor $61370, %r12

// Store
lea addresses_RW+0x1ab09, %r10
nop
cmp $18197, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
xor %rsi, %rsi

// Load
lea addresses_UC+0x14709, %rsi
clflush (%rsi)
nop
nop
nop
cmp %rbx, %rbx
mov (%rsi), %edx
dec %r12

// REPMOV
lea addresses_WC+0x8f09, %rsi
lea addresses_PSE+0x1d789, %rdi
nop
nop
add %r14, %r14
mov $26, %rcx
rep movsw
xor %rsi, %rsi

// Store
lea addresses_PSE+0x1a309, %rbx
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
add $52381, %rdx

// Store
mov $0x619, %rcx
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovaps %ymm1, (%rcx)

// Exception!!!
nop
nop
nop
xor %rcx, %rcx
div %rcx
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_UC+0x14709, %rcx
nop
nop
nop
lfence
mov (%rcx), %bx
lea oracles, %rbx
and $0xff, %rbx
shlq $12, %rbx
mov (%rbx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': True, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}}
{'5e': 1}
5e
*/
