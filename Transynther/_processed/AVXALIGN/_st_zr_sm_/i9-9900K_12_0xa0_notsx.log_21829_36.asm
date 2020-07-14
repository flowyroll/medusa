.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf459, %rsi
lea addresses_WT_ht+0x3c59, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $40, %rcx
rep movsb
nop
dec %rdx
lea addresses_WC_ht+0x1a33c, %rsi
lea addresses_WT_ht+0x74cf, %rdi
nop
nop
nop
add $58860, %r15
mov $60, %rcx
rep movsb
nop
nop
nop
nop
xor $6297, %rcx
lea addresses_D_ht+0x11c59, %rdx
nop
nop
add $38931, %rbp
movl $0x61626364, (%rdx)
nop
xor $39857, %rdi
lea addresses_WC_ht+0x2722, %rdx
nop
nop
nop
nop
nop
and $45431, %r15
mov (%rdx), %rdi
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x14059, %rcx
nop
xor $43423, %rsi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
nop
sub $46392, %rsi
lea addresses_A_ht+0x199e5, %rsi
lea addresses_normal_ht+0xf349, %rdi
sub %r13, %r13
mov $126, %rcx
rep movsq
nop
nop
nop
and $24573, %r15
lea addresses_A_ht+0xbfd9, %r9
sub $51051, %rcx
mov (%r9), %di
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x1d6d9, %rcx
nop
nop
nop
and %r13, %r13
mov (%rcx), %edi
nop
nop
dec %rsi
lea addresses_normal_ht+0x10059, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $51854, %rdx
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
nop
xor $17782, %r15
lea addresses_A_ht+0xac59, %rsi
sub %rbp, %rbp
movb (%rsi), %r9b
nop
nop
nop
nop
nop
add $63515, %rdi
lea addresses_D_ht+0x1cc59, %rcx
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xfa59, %rsi
lea addresses_A_ht+0xf459, %rdi
cmp $58242, %r15
mov $109, %rcx
rep movsw
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x3c59, %r9
nop
nop
nop
nop
sub $42301, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
xor %r8, %r8

// REPMOV
lea addresses_PSE+0x2c59, %rsi
lea addresses_A+0x1ea59, %rdi
dec %rbx
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r12, %r12

// Store
mov $0x459, %rbx
dec %r9
movw $0x5152, (%rbx)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_WT+0x16c59, %r12
clflush (%r12)
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
cmp $28074, %rcx

// Store
lea addresses_PSE+0x16259, %r12
nop
and %rbx, %rbx
movw $0x5152, (%r12)
nop
cmp %rbx, %rbx

// Store
mov $0xdc9, %r12
nop
nop
xor %r9, %r9
movb $0x51, (%r12)
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_normal+0xeff9, %rax
cmp $48886, %r8
movb (%rax), %r9b
nop
nop
add $30571, %rsi

// Store
lea addresses_UC+0x1ea01, %rcx
nop
nop
and $39467, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
xor %rcx, %rcx

// Store
lea addresses_A+0x5459, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rcx)
nop
nop
add $50111, %rbx

// Load
mov $0x6446af0000000059, %r9
nop
nop
nop
and %rbx, %rbx
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_A+0x5459, %rdi
nop
nop
nop
nop
nop
and $13615, %r9
movaps (%rdi), %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'54': 15097, '00': 6732}
00 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 00 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 00 00 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 00 00 00 00 00 54 54 00 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 00 00 00 54 00 54 54 00 00 54 00 54 54 00 00 54 54 54 00 54 00 00 54 54 54 54 54 00 00 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 00 00 00 54 54 54 54 00 00 00 00 54 54 54 54 54 54 54 00 00 00 54 00 00 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 00 00 54 54 54 54 00 54 00 00 54 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 00 54 00 00 54 54 54 54 54 00 54 00 00 00 54 54 54 54 00 54 54 54 54 00 00 00 00 00 54 54 00 00 00 54 54 00 00 00 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 00 54 54 54 00 00 54 54 00 00 54 54 00 54 54 54 54 00 00 54 54 54 00 00 00 00 00 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 00 00 00 00 54 54 00 54 54 54 00 00 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 00 54 00 00 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 00 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 00 54 54 54 00 54 54 00 00 00 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 54 00 54 00 54 00 54 54 54 54 00 54 00 54 54 54 54 00 54 54 00 00 00 54 00 00 54 54 00 54 00 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 00 00 00 54 54 00 54 54 00 00 00 54 00 00 00 00 00 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 00 00 54 54 54 00 00 54 54 00 54 00 54 54 54 54 54 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 00 00 54 00 00 54 54 54 54 00 54 54 54 00 00 54 54 54 00 54 00 54 54 54 54 00 00 00 00 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54
*/
