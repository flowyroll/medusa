.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7f28, %rsi
nop
xor %rbp, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $33979, %r13
lea addresses_A_ht+0x186e8, %rsi
clflush (%rsi)
nop
nop
nop
cmp $38003, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0xd7c0, %r10
nop
nop
nop
add $925, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x3c54, %r13
nop
nop
nop
xor %rdi, %rdi
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x18568, %rsi
lea addresses_A+0x12288, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
and $24589, %r10

// Store
lea addresses_WC+0x1d868, %rsi
clflush (%rsi)
nop
add $36423, %rcx
movw $0x5152, (%rsi)
nop
dec %r10

// Load
lea addresses_normal+0x1b468, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %r8, %r8
mov (%rcx), %r15
nop
nop
sub $64331, %r8

// Store
lea addresses_normal+0x16668, %rbx
nop
nop
nop
nop
cmp $51104, %r10
movw $0x5152, (%rbx)
nop
nop
nop
nop
xor $2122, %rsi

// Store
lea addresses_normal+0x13190, %r10
clflush (%r10)
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
dec %r15

// Store
lea addresses_PSE+0xb868, %r10
nop
nop
nop
nop
add %r8, %r8
movb $0x51, (%r10)
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x129e8, %r8
nop
nop
nop
sub $17063, %rdi
movb $0x51, (%r8)
add $43583, %rbx

// Store
lea addresses_PSE+0xf9fc, %r8
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_normal+0x11048, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_WC+0x1f648, %r10
nop
nop
nop
xor %rsi, %rsi
movb (%r10), %cl
nop
nop
nop
nop
nop
xor $60867, %rcx

// Store
lea addresses_UC+0x18c68, %rdi
nop
nop
nop
nop
inc %r10
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_UC+0x1dc68, %r10
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_WC+0x1c468, %r10
clflush (%r10)
and $18041, %r8
movb (%r10), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
