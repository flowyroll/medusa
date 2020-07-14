.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf288, %rsi
lea addresses_UC_ht+0x334, %rdi
clflush (%rdi)
nop
add $31810, %r10
mov $103, %rcx
rep movsb
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x17e88, %r12
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r12)
nop
cmp $12448, %r13

// Store
lea addresses_WC+0x1ec40, %rcx
nop
nop
nop
nop
and $48328, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rcx)
add %rcx, %rcx

// REPMOV
lea addresses_PSE+0xc288, %rsi
lea addresses_WT+0x7d08, %rdi
nop
nop
nop
inc %r9
mov $112, %rcx
rep movsw
dec %r15

// Store
lea addresses_UC+0x11028, %r9
add $55976, %r13
movb $0x51, (%r9)
nop
nop
nop
nop
cmp $51412, %rdi

// Store
mov $0xd88, %r13
add %rbp, %rbp
movb $0x51, (%r13)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_WT+0xe508, %rdi
nop
nop
nop
nop
nop
add $39965, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
cmp $10622, %r15

// Load
lea addresses_RW+0x118c8, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add $55417, %rdi
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
add %rcx, %rcx

// Store
lea addresses_A+0x19288, %rsi
nop
nop
and $58157, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
inc %r12

// Store
lea addresses_A+0x1e288, %rcx
nop
add $39044, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x928, %rdi
nop
nop
nop
nop
inc %rsi
movb $0x51, (%rdi)
cmp $18826, %rdi

// Faulty Load
lea addresses_A+0x1e288, %rsi
nop
nop
dec %rcx
mov (%rsi), %bp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
