.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d17a, %rsi
lea addresses_normal_ht+0x1497a, %rdi
clflush (%rsi)
nop
nop
inc %r13
mov $80, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xe366, %rsi
lea addresses_A_ht+0xb64a, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $100, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x17ac2, %r11
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%r11)
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_RW+0x155fa, %r11
dec %r10
movb (%r11), %r13b
nop
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_D+0xc97a, %r10
nop
sub $41154, %r14
mov (%r10), %dx
and %r9, %r9

// REPMOV
lea addresses_normal+0x1d11a, %rsi
lea addresses_A+0x16e7a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
inc %r9
mov $4, %rcx
rep movsw
cmp %r9, %r9

// Store
mov $0x17a, %r13
clflush (%r13)
and $7005, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r13)
nop
cmp %r9, %r9

// Load
lea addresses_A+0x3a7a, %r11
nop
nop
inc %rax
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rcx
nop
xor $7074, %rdi

// Store
lea addresses_WC+0x13bfa, %rcx
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
xor $14534, %rsi

// Store
lea addresses_WT+0x18afa, %rcx
nop
nop
nop
nop
sub $65197, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
and %r13, %r13

// Store
lea addresses_D+0xd8da, %r9
sub %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
cmp $62281, %rax

// Load
lea addresses_WC+0x99ee, %rdx
nop
nop
nop
nop
cmp $1803, %rdi
mov (%rdx), %rsi
nop
nop
and $38678, %rsi

// Store
lea addresses_US+0x417a, %r10
nop
sub $11093, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
and $22202, %r14

// Store
mov $0x276, %r10
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
and $65324, %rsi

// Load
lea addresses_D+0x1d4fa, %r9
nop
nop
nop
nop
add $43253, %rdi
movb (%r9), %cl
cmp $28128, %r13

// Faulty Load
lea addresses_PSE+0x557a, %r13
nop
nop
nop
cmp %r14, %r14
mov (%r13), %r10w
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'33': 216}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
