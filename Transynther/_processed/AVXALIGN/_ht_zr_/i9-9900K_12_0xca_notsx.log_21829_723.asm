.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c6a6, %rbx
nop
nop
nop
nop
nop
add $46222, %r12
movl $0x61626364, (%rbx)
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xd7a6, %rsi
lea addresses_WT_ht+0xd1ca, %rdi
nop
cmp $18409, %r13
mov $108, %rcx
rep movsw
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x8ca6, %rsi
lea addresses_UC_ht+0x1631e, %rdi
clflush (%rsi)
inc %rdx
mov $45, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x186a6, %rdx
nop
nop
nop
nop
nop
add %rdi, %rdi
movb (%rdx), %bl
sub $8053, %rsi
lea addresses_A_ht+0x141a6, %rsi
nop
dec %r8
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
and $1785, %r12
lea addresses_WT_ht+0xef0a, %rdx
nop
xor %rbx, %rbx
mov (%rdx), %ecx
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x148a6, %rsi
lea addresses_WT_ht+0x15346, %rdi
clflush (%rdi)
nop
nop
and $39079, %r8
mov $124, %rcx
rep movsq
nop
nop
nop
nop
and $63880, %r12
lea addresses_WC_ht+0xfb36, %rdx
nop
xor $60617, %r8
mov (%rdx), %r12w
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xda6, %rbx
nop
nop
nop
nop
nop
cmp $19832, %r12
mov (%rbx), %dx
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x18a66, %rsi
lea addresses_WT_ht+0x91a6, %rdi
clflush (%rsi)
nop
add $64530, %r12
mov $53, %rcx
rep movsb
nop
and $7208, %r13
lea addresses_WC_ht+0x1b0e, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %r8, %r8
movb (%rsi), %bl
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x71a6, %rbx
nop
xor $37722, %r13
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx

// Load
lea addresses_US+0x175e6, %r15
clflush (%r15)
cmp $33471, %rcx
mov (%r15), %r13d
nop
nop
nop
sub $60364, %r8

// Store
lea addresses_PSE+0x1c5a6, %r12
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
nop
sub $48257, %r13

// Load
lea addresses_WT+0x117b6, %r13
nop
xor %r8, %r8
mov (%r13), %r15d
add %rcx, %rcx

// Faulty Load
lea addresses_A+0x69a6, %r13
nop
nop
nop
nop
cmp %r14, %r14
movaps (%r13), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'49': 8, '00': 9614, '46': 9930, '45': 29, '48': 2248}
00 49 46 46 46 46 00 48 48 00 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 46 48 00 00 00 00 00 46 46 46 46 48 00 00 00 00 46 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 48 48 48 00 00 00 46 46 46 46 46 46 46 48 00 00 00 00 46 46 46 46 46 00 48 00 00 00 00 46 46 46 46 00 00 48 00 00 00 46 46 46 46 46 46 46 48 00 00 00 00 46 46 46 46 46 00 48 00 00 00 00 46 46 46 46 46 46 46 46 46 00 00 48 48 00 00 00 00 46 46 46 00 46 48 48 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 46 46 00 48 48 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 48 00 48 00 00 00 46 46 46 46 46 46 48 00 00 00 00 46 46 46 46 00 48 48 00 00 00 00 00 46 46 46 46 00 00 00 00 00 46 46 46 46 46 46 46 46 46 00 48 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 48 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 48 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 46 46 46 46 46 48 00 00 00 00 46 46 46 46 46 46 46 46 00 48 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 46 46 46 48 00 00 46 46 46 00 00 00 00 00 00 46 46 46 46 48 00 48 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 00 46 46 46 46 46 48 00 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 00 46 48 48 00 00 00 00 46 46 48 00 00 00 00 00 46 46 46 46 48 00 00 00 00 00 46 46 48 00 48 00 00 00 46 46 46 46 00 48 00 00 00 46 46 46 46 46 46 48 00 00 00 00 46 46 46 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 49 46 00 48 00 00 00 00 00 46 46 46 46 46 45 00 00 00 00 00 49 46 46 46 00 48 00 00 00 00 46 46 46 00 48 00 00 00 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 46 46 00 00 46 46 46 46 00 00 48 00 00 00 46 46 46 46 46 46 00 46 46 00 00 00 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 00 48 00 00 00 00 46 46 46 46 00 48 00 00 00 00 46 46 46 46 46 48 00 00 00 00 00 46 46 46 46 46 00 48 00 00 00 00 46 46 46 48 48 00 00 00 00 46 46 46 46 46 46 46 46 46 00 00 48 00 00 00 46 46 46 46 48 48 00 00 00 00 00 46 46 46 46 00 00 48 00 00 00 00 46 46 46 46 00 00 00 00 00 46 46 46 46 46 00 48 48 00 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 48 48 00 00 00 00 46 46 46 45 45 00 00 00 00 46 46 46 46 46 46 00 48 00 00 00 00 46 46 46 46 46 48 00 48 00 00 00 00 46 46 46 46 46 00 00 48 00 00 00 46 46 46 46 48 00 00 00 00 00 46 46 46 46 48 48 00 00 00 46 46 46 46 46 48 00 00 00 00 46 46 46 46 46 00 00 48 00 00 00 46 46 46 46 00 46 45 46 46 46 46 00 48 00 00 00 00 46 46 46 46 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 46 46 00 48 00 00 00 00 46 46 46 46 00 48 00 00 00 00 46 46 46 00 48 00 00 00 00 46 46 46 46 46 46 48 00 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 46 46 46 46 48 00 00 00 00 46 46 46 46 46 48 48 00 00 00 00 46 46 46 46 46 00 00 00 48 00 00 00 46 46 46 48 00 00 00 00 00 00 46 46 46 00 46 46 46 48 48 00 00 00 00 46 46 46 46 46 46 46 46 46
*/
