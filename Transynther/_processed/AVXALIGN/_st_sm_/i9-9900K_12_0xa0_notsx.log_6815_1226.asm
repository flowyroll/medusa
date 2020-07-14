.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xdda0, %rax
sub %r13, %r13
movl $0x61626364, (%rax)
nop
nop
inc %r9
lea addresses_UC_ht+0x131a0, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub $25278, %rdx
mov (%r11), %r15
cmp $30638, %r9
lea addresses_normal_ht+0x81a0, %rsi
lea addresses_normal_ht+0xc4a0, %rdi
nop
add %r13, %r13
mov $91, %rcx
rep movsq
nop
nop
nop
nop
and $30293, %rdi
lea addresses_WT_ht+0x3206, %r9
and $20799, %rdi
movw $0x6162, (%r9)
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x9272, %rsi
lea addresses_WC_ht+0x1213f, %rdi
nop
nop
nop
nop
nop
add $20217, %rdx
mov $103, %rcx
rep movsl
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0xa1a0, %rsi
lea addresses_UC_ht+0x103d8, %rdi
nop
nop
dec %r13
mov $18, %rcx
rep movsw
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x1eff8, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rdx), %r9
nop
sub $20808, %rsi
lea addresses_A_ht+0x16768, %rdi
clflush (%rdi)
nop
nop
nop
nop
lfence
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
inc %r11
lea addresses_UC_ht+0x13924, %rcx
nop
nop
add %rax, %rax
mov (%rcx), %r15
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x8d90, %rcx
nop
nop
and $404, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1beb0, %rdx
nop
nop
nop
nop
xor %r9, %r9
movb $0x61, (%rdx)
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x48a0, %rsi
lea addresses_normal_ht+0x14580, %rdi
nop
nop
and %r13, %r13
mov $88, %rcx
rep movsq
nop
inc %r9
lea addresses_UC_ht+0x9e20, %r15
nop
nop
nop
nop
nop
add $20083, %rcx
mov (%r15), %rdx
nop
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x29a0, %r9
clflush (%r9)
mfence
movw $0x5152, (%r9)
xor $49398, %rdx

// REPMOV
lea addresses_RW+0x179a0, %rsi
lea addresses_RW+0x7da0, %rdi
clflush (%rsi)
nop
nop
inc %r11
mov $14, %rcx
rep movsq
nop
nop
nop
add $56198, %r9

// Store
lea addresses_US+0xe9e0, %rsi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
add %r11, %r11

// Load
lea addresses_PSE+0x156e0, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movb (%rcx), %dl
nop
nop
nop
nop
sub $28114, %rcx

// Store
lea addresses_US+0x105a0, %rdx
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movntdq %xmm6, (%rdx)
nop
nop
nop
nop
xor $43695, %rdi

// Faulty Load
lea addresses_US+0x105a0, %rcx
inc %r10
movb (%rcx), %r8b
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'58': 6815}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
