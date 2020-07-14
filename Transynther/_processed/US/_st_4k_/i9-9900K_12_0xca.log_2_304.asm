.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12af1, %rsi
lea addresses_WT_ht+0x125d5, %rdi
nop
nop
nop
nop
add $8877, %rbx
mov $3, %rcx
rep movsq
xor $38906, %r13
lea addresses_WC_ht+0x330b, %r9
nop
nop
nop
nop
xor %r11, %r11
mov (%r9), %rsi
nop
nop
nop
nop
xor $8148, %rbx
lea addresses_WT_ht+0x1a6f1, %rcx
nop
cmp $21953, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_US+0x155d1, %rax
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
cmp %r14, %r14

// Load
mov $0x4c6fef0000000551, %r15
nop
add %rsi, %rsi
mov (%r15), %r10d
nop
nop
nop
nop
sub $47381, %rbp

// Store
lea addresses_UC+0x15ef1, %r12
add %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
dec %r10

// Store
lea addresses_UC+0x66f1, %r14
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r14)
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_US+0xe6f1, %rsi
nop
nop
nop
nop
dec %r12
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'58': 2}
58 58
*/
