.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc7a7, %r13
clflush (%r13)
nop
and $42309, %r15
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
add %r9, %r9
lea addresses_D_ht+0x177a7, %rbp
nop
nop
nop
nop
sub %rax, %rax
mov (%rbp), %r13w
nop
nop
and $15959, %rbp
lea addresses_D_ht+0x1dea7, %rsi
lea addresses_WT_ht+0x11569, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x397, %r15
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
lfence
lea addresses_D_ht+0x10367, %rbp
cmp %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x59a7, %r9
nop
nop
sub $51071, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r9)
nop
nop
xor $41562, %r14

// Store
lea addresses_normal+0x267, %rbx
nop
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
and %rbp, %rbp

// Load
lea addresses_UC+0xe27b, %rdi
nop
nop
nop
cmp %r15, %r15
mov (%rdi), %bp
nop
nop
nop
dec %r14

// Load
mov $0x79cf2500000005e3, %r15
dec %rcx
mov (%r15), %edi
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_D+0x97a7, %r15
and %rdi, %rdi
mov (%r15), %r9
nop
nop
xor $53475, %r9

// Store
lea addresses_D+0x10be7, %rdi
xor $39676, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
add %r14, %r14

// Load
lea addresses_WT+0xc7a7, %rdi
cmp $46259, %rbx
movb (%rdi), %cl
nop
nop
nop
sub $27412, %r9

// Store
mov $0xe370b0000000996, %r14
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
nop
xor $52411, %rbx

// Store
lea addresses_US+0x1a3a7, %r15
nop
nop
nop
sub $11072, %rcx
movl $0x51525354, (%r15)
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_WT+0xc7a7, %r15
and $52990, %rbp
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'46': 2}
46 46
*/
