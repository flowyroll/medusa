.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x114e0, %rsi
lea addresses_A_ht+0x16338, %rdi
clflush (%rsi)
clflush (%rdi)
and $48904, %r11
mov $9, %rcx
rep movsq
cmp $53443, %rdi
lea addresses_UC_ht+0x6ade, %rcx
nop
add $22535, %r15
movb (%rcx), %bl
nop
nop
xor $824, %rcx
lea addresses_WC_ht+0x6938, %rsi
lea addresses_normal_ht+0x1ea58, %rdi
nop
nop
dec %r15
mov $4, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xccda, %rcx
nop
nop
nop
nop
nop
and $5354, %r13
mov (%rcx), %edi
cmp %r13, %r13
lea addresses_A_ht+0x2e38, %rsi
lea addresses_WC_ht+0x1bd8, %rdi
nop
nop
dec %r8
mov $43, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1a558, %rsi
lea addresses_PSE+0xaad0, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $117, %rcx
rep movsl
sub $61749, %rcx

// Load
mov $0x6de0640000000d38, %rcx
nop
nop
nop
and $20681, %r12
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
nop
and $20167, %r12

// Store
lea addresses_US+0x14618, %r12
nop
nop
nop
nop
cmp $52690, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r12)
and $30626, %rcx

// Store
lea addresses_US+0x14829, %rcx
nop
nop
nop
and $16469, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0x19318, %rsi
cmp $29874, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x17458, %r12
nop
nop
nop
sub $47834, %rdi
movb (%r12), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'33': 24}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
