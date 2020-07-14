.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18fb7, %r14
nop
nop
nop
nop
nop
dec %rdx
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rcx
cmp $39042, %rbx
lea addresses_normal_ht+0xf977, %rsi
nop
nop
nop
nop
inc %rbx
movl $0x61626364, (%rsi)
nop
nop
cmp $58384, %rcx
lea addresses_D_ht+0x14300, %rsi
lea addresses_WT_ht+0x19f75, %rdi
nop
cmp %r9, %r9
mov $26, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x5097, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
add %rbx, %rbx
lea addresses_normal_ht+0xa8d7, %rbx
nop
nop
nop
nop
nop
sub $46109, %r14
movb $0x61, (%rbx)
nop
nop
and $55793, %rdi
lea addresses_A_ht+0x129e7, %rdi
nop
nop
nop
nop
nop
add $24876, %r14
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xe997, %rsi
lea addresses_WC+0x5b97, %rdi
nop
nop
nop
nop
nop
add $51598, %r10
mov $64, %rcx
rep movsl
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0xd197, %rcx
nop
nop
nop
and $28751, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovaps %ymm2, (%rcx)
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0xc797, %r11
clflush (%r11)
nop
cmp $46110, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
sub %rdi, %rdi

// Store
lea addresses_WT+0xbb97, %r10
nop
nop
nop
nop
xor $766, %rdi
movw $0x5152, (%r10)
nop
nop
and %r13, %r13

// Store
lea addresses_WT+0xa697, %rsi
nop
nop
nop
cmp $3069, %rcx
movw $0x5152, (%rsi)
nop
sub %r10, %r10

// Store
mov $0x1ef, %rbp
nop
nop
cmp $16766, %r13
movl $0x51525354, (%rbp)

// Exception!!!
nop
mov (0), %rsi
nop
nop
and $60987, %rsi

// Load
lea addresses_A+0xc517, %r11
nop
nop
nop
nop
nop
add $63592, %r13
movups (%r11), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
sub $23092, %r11

// Load
lea addresses_RW+0x6597, %r13
nop
nop
nop
xor %rsi, %rsi
movups (%r13), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_US+0x1397, %r11
nop
nop
nop
nop
nop
dec %rbp
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'06': 3778, '58': 17931, '8a': 3, '5b': 1, '38': 10, '72': 1, '46': 94, '00': 11}
06 58 06 58 06 58 58 58 06 58 58 58 58 58 58 58 06 58 58 06 58 58 06 58 06 58 06 58 58 06 58 58 06 58 58 06 58 58 06 58 06 58 06 58 46 58 06 58 58 06 58 06 58 58 06 58 06 58 58 58 06 58 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 06 58 58 58 58 58 58 58 58 06 58 06 58 06 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 06 06 58 58 06 58 58 58 58 06 58 06 58 58 58 58 06 58 58 58 58 58 58 58 58 46 58 06 58 58 06 58 06 58 58 58 58 58 58 06 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 06 58 58 06 58 58 58 58 58 58 58 06 58 58 06 58 06 58 58 58 58 58 58 58 06 58 06 58 06 58 58 58 58 58 06 58 06 58 58 38 58 58 58 06 58 58 58 58 58 58 06 58 58 06 58 58 06 58 58 58 58 58 58 06 58 06 58 58 58 58 58 58 06 58 58 58 06 58 58 58 58 58 58 58 06 06 58 58 06 58 06 58 58 06 58 06 58 06 58 58 06 58 58 06 58 58 58 58 58 58 58 58 58 06 58 58 06 58 58 58 58 58 06 58 58 58 06 58 06 58 06 58 46 58 58 58 06 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 06 58 06 58 58 58 58 58 58 58 58 58 06 58 58 06 58 58 58 58 58 06 58 06 58 58 58 58 58 06 58 58 58 58 06 58 58 58 06 58 06 58 58 06 58 58 58 58 58 58 58 06 58 58 58 58 06 58 58 06 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 06 58 58 06 58 06 58 58 06 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 06 58 58 06 58 58 58 58 58 58 06 58 06 58 58 58 58 06 06 58 58 58 58 58 58 06 58 58 58 58 58 58 06 58 06 58 58 58 06 58 58 06 58 58 06 58 06 58 58 06 58 58 58 06 58 06 58 58 06 58 58 06 46 58 58 58 06 58 58 58 58 58 58 58 06 58 58 58 58 06 58 06 58 58 06 58 06 58 06 58 58 06 58 58 06 06 58 58 58 58 58 06 58 58 58 06 58 58 58 06 06 58 58 58 06 58 58 06 58 58 58 06 58 06 58 58 58 58 06 58 58 58 58 58 06 58 58 58 58 06 58 58 58 06 58 06 58 06 58 58 58 58 06 58 58 58 06 58 58 58 58 06 58 58 06 58 58 06 58 06 58 58 06 58 58 06 58 58 06 58 58 58 58 58 06 58 06 58 58 58 58 58 58 58 58 06 58 58 58 58 58 06 58 58 58 58 58 58 58 58 58 46 06 58 58 58 58 58 58 46 06 58 58 58 58 58 58 58 06 58 06 58 58 06 58 58 58 58 58 58 58 06 58 58 06 58 58 58 58 58 38 58 58 58 58 06 06 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 58 06 58 06 58 06 58 58 58 06 58 06 58 58 58 58 06 58 06 58 58 58 58 58 06 58 58 58 58 06 58 06 58 58 06 58 58 58 06 58 58 58 58 58 58 58 58 58 58 58 58 58 06 58 58 06 58 46 06 58 06 58 58 58 06 58 06 58 58 58 06 58 06 58 46 58 58 06 58 58 58 58 58 06 58 58 58 06 58 58 58 58 58 58 58 58 06 58 06 58 06 58 06 06 58 06 58 58 46 58 06 58 58 58 58 58 58 58 58 06 58 58 58 06 58 46 58 06 58 58 06 58 58 58 58 58 06 58 58 58 58 58 06 58 58 58 58 58 06 58 58 58 58 58 58 06 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 58 58 06 58 58 06 58 58 58 06 58 58 06 58 58 06 58 58 58 06 58 06 58 58 06 58 58 58 06 58 58 06 58 06 58 58 58 58 58 58 06 06 58 06 58 58 58 06 58 58 06 58 58 58 58 58 58 58 58 58 06 58 58 58 58 06 58 58 58 58 58 06 58 58 58 06 58 58 58 58 06 58 58 06 58 58 58 06 58 58 58 58 58 58 06 58 58 58 58 58 58 06 58 58 58 06 58 58 58 58 58 58 58 06 58 58 58 58 58 58 06 58 58 58 06 58 58 58 58 58 58 58 58 06 58
*/
