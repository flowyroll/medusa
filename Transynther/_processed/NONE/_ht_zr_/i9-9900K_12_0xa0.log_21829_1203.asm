.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1280a, %rax
nop
nop
nop
nop
nop
sub $3068, %rbx
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
nop
nop
nop
cmp $61730, %r9
lea addresses_WC_ht+0x1afca, %rsi
lea addresses_A_ht+0x198aa, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r12, %r12
mov $61, %rcx
rep movsw
mfence
lea addresses_normal_ht+0x1a80a, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r12)
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x19aaa, %rsi
lea addresses_D_ht+0xbfbe, %rdi
inc %rax
mov $85, %rcx
rep movsl
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x8c0a, %rax
dec %r12
mov (%rax), %r8w
nop
nop
nop
nop
sub $55810, %rbx
lea addresses_D_ht+0xc28a, %rsi
lea addresses_UC_ht+0x16e0a, %rdi
nop
nop
nop
sub %r9, %r9
mov $84, %rcx
rep movsb
nop
nop
sub $20244, %r9
lea addresses_WC_ht+0x17c86, %rsi
lea addresses_D_ht+0x46a, %rdi
clflush (%rdi)
xor %rbx, %rbx
mov $33, %rcx
rep movsb
nop
nop
nop
cmp $7380, %rsi
lea addresses_normal_ht+0x15d0a, %r8
nop
add $36148, %rbx
movw $0x6162, (%r8)
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1e30a, %r8
nop
xor $48959, %r9
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x2b8a, %rcx
nop
nop
add $38728, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x14b0a, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and %r8, %r8
movw $0x6162, (%rax)
sub $56856, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Load
lea addresses_normal+0x1760a, %rdx
nop
nop
nop
inc %r8
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
inc %r8

// Store
lea addresses_US+0x170, %rax
nop
nop
xor $64872, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rax)
nop
inc %r8

// Store
lea addresses_PSE+0x1630a, %r8
nop
nop
nop
inc %r14
movw $0x5152, (%r8)
nop
nop
nop
xor %rdi, %rdi

// Load
mov $0xe0a, %rdx
nop
nop
nop
nop
sub $10965, %r14
mov (%rdx), %rbx
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_A+0xb39a, %rbx
nop
nop
xor $35759, %r14
movw $0x5152, (%rbx)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_UC+0x1060a, %rbx
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
nop
and $15602, %rax

// Store
lea addresses_A+0x16f0a, %rdi
and $64116, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
cmp $15784, %rdi

// Store
lea addresses_RW+0x922c, %rbx
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rbx)
nop
nop
inc %r11

// Faulty Load
lea addresses_UC+0x1660a, %rdi
nop
and %rax, %rax
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'48': 435, '49': 11976, '00': 9418}
00 49 49 49 49 00 00 49 49 49 00 00 49 00 00 00 00 49 00 49 49 00 00 49 49 49 00 00 00 00 00 49 49 49 49 49 49 00 49 00 00 00 49 00 49 00 00 48 00 49 49 00 00 49 00 49 00 49 00 49 49 49 49 49 00 00 00 00 00 00 49 49 49 00 49 00 49 49 49 00 00 49 49 00 00 00 49 49 49 00 49 49 00 00 00 00 49 49 00 49 49 49 00 49 49 49 00 49 00 49 49 49 49 00 00 49 00 49 49 00 49 00 49 49 00 49 00 48 49 00 49 49 00 49 49 49 48 49 49 49 49 00 49 49 00 49 00 49 49 00 49 49 00 49 00 48 49 49 00 49 49 49 49 49 49 00 00 00 49 00 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 00 49 49 00 48 49 49 00 00 00 00 49 49 49 00 49 49 00 00 00 49 00 49 00 49 49 49 00 49 49 49 49 49 49 49 00 49 48 00 49 00 49 48 49 00 49 00 49 00 49 49 49 49 00 49 49 00 49 49 00 49 49 00 00 00 49 49 00 49 49 49 49 00 00 49 00 00 49 49 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 49 49 49 00 00 49 49 00 49 49 00 00 49 00 00 49 49 00 49 49 00 49 00 49 00 00 49 49 49 49 49 00 00 49 00 00 49 00 49 00 00 00 49 00 49 49 49 00 00 49 49 49 49 49 48 49 00 00 48 00 00 49 49 49 49 49 49 49 00 49 00 00 00 49 49 49 49 00 00 49 49 49 49 00 49 49 00 00 00 49 00 00 49 49 00 00 49 49 49 00 00 49 00 00 00 49 49 00 49 49 00 49 49 49 49 00 00 00 00 00 49 00 00 49 49 49 49 00 49 00 00 00 00 00 49 00 00 49 00 49 00 49 49 00 00 00 49 00 00 00 49 49 00 49 49 00 49 00 49 00 49 49 00 00 00 00 49 00 00 00 49 49 49 00 49 00 00 49 00 49 00 49 00 49 00 49 49 49 00 49 49 48 00 49 49 49 00 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 00 00 49 49 00 00 49 49 49 49 49 00 00 00 49 00 49 49 00 00 49 49 49 49 00 49 00 49 49 49 49 00 49 49 00 00 00 49 49 49 49 00 00 00 49 00 00 00 49 00 49 00 00 49 00 00 00 49 49 49 49 00 00 49 00 49 49 49 00 49 00 00 49 00 49 00 49 49 00 00 00 49 00 49 49 00 49 49 00 49 00 49 49 00 49 00 00 00 49 00 49 00 49 49 49 00 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 49 49 49 49 49 00 00 00 00 00 49 49 00 49 00 49 49 00 00 00 49 49 49 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 49 49 49 00 00 49 00 00 00 00 49 00 49 00 00 49 00 00 49 49 49 00 49 49 49 49 00 00 49 49 49 49 00 00 49 49 49 49 49 49 00 49 49 49 49 49 49 00 00 00 00 49 00 49 49 49 49 00 00 00 00 00 49 00 49 49 00 00 49 49 49 49 49 00 49 49 00 49 49 00 49 49 00 48 49 49 00 49 00 49 49 00 49 00 00 49 00 49 00 49 00 49 49 00 49 49 00 00 49 49 49 00 00 00 49 49 48 49 00 00 49 00 00 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 00 49 49 00 49 00 00 49 00 49 00 49 49 00 48 49 49 49 00 49 49 49 00 00 49 49 00 49 49 00 00 49 49 49 49 49 49 00 49 00 49 00 00 49 49 49 49 00 49 00 00 00 49 00 49 49 00 00 00 49 49 49 49 49 49 00 00 49 00 00 49 49 49 49 00 00 49 00 00 00 49 00 49 00 00 00 00 49 49 49 49 00 49 49 49 00 49 49 00 00 48 49 49 00 00 00 49 00 00 49 49 49 00 49 49 00 00 49 49 49 49 00 00 00 49 00 00 00 00 00 49 49 49 00 00 00 00 49 00 00 00 49 00 49 00 00 49 00 00 00 49 49 49 00 00 49 00 00 49 49 49 00 49 00 00 49 49 49 49 49 49 00 49 49 49 49 00 49 49 00 49 00 49 49 49 00 00 00 49 00 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 49
*/
