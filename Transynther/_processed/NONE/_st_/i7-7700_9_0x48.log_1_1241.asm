.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1113f, %rax
nop
nop
nop
and $61169, %rdi
movw $0x5152, (%rax)
nop
nop
nop
nop
sub $40055, %rdi

// Store
lea addresses_A+0x1d73f, %r15
inc %r13
movb $0x51, (%r15)
nop
inc %rcx

// Store
lea addresses_WC+0xbf3f, %rsi
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x1e73f, %rax
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
nop
and $19562, %rax

// Store
lea addresses_RW+0x9cd5, %r8
clflush (%r8)
nop
dec %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r8)
nop
dec %rax

// Faulty Load
lea addresses_WC+0x11f3f, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'58': 1}
58
*/
