.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11706, %rsi
lea addresses_WT_ht+0x1ac6, %rdi
sub $57036, %rbx
mov $24, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x13286, %rax
nop
and %r10, %r10
mov (%rax), %di
cmp %rdi, %rdi
lea addresses_D_ht+0x19786, %rcx
nop
nop
sub %rsi, %rsi
mov (%rcx), %ebx
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x4175870000000186, %rdx
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%rdx)
inc %rcx

// Store
lea addresses_A+0x154e0, %rbp
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
nop
xor $50976, %rdx

// Store
mov $0x77d, %rdx
clflush (%rdx)
sub $40314, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
dec %r9

// Load
lea addresses_PSE+0x1dba6, %rdx
nop
nop
nop
nop
nop
and $2274, %rbp
mov (%rdx), %r9
nop
and %rdx, %rdx

// Store
mov $0x586, %r12
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_US+0x3ea2, %r9
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
mov $0x586, %rbp
nop
nop
sub $31907, %r9
movaps (%rbp), %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'58': 3268, '00': 16107}
00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 00 58 00 00 00 00 58 00 00 00 00 00 58 58 00 58 00 00 00 00 00 58 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 58 00 00 58 58 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 58 58 00 58 00 58 58 58 00 58 00 00 00 00 58 00 00 58 00 00 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 58 00 00 58 58 00 00 00 58 00 58 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 58 00 00 00 00 00 58 00 00 00 00 00 58 58 00 58 00 00 00 58 00 00 00 00 00 00 00 58 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 58 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 58 00 58 58 58 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 58 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 58 00 00 58 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 58 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 58 58 00 00 58 58 00 58 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 58 00 58 58 00 00 58 00 58 00 00 00 00 58 00 00 00 00 58 58 58 00 00 00 58 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 58 00 58
*/
