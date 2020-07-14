.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19119, %rdi
nop
nop
and $7359, %rsi
mov (%rdi), %r13w
cmp $43515, %r14
lea addresses_D_ht+0x6f25, %rsi
lea addresses_UC_ht+0x158cd, %rdi
clflush (%rdi)
and %r14, %r14
mov $11, %rcx
rep movsw
nop
and $65110, %rcx
lea addresses_D_ht+0x11559, %r10
clflush (%r10)
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r10)
cmp $26378, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_UC+0x1a259, %rax
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%rax)
nop
nop
and $60741, %rdx

// Store
lea addresses_PSE+0x1cfc5, %rdx
clflush (%rdx)
nop
sub $53323, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
and $62491, %r14

// Load
lea addresses_normal+0x15599, %rdx
clflush (%rdx)
nop
nop
nop
cmp %r13, %r13
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r10
nop
and $19609, %r13

// Store
lea addresses_D+0x1e919, %rax
nop
nop
and $31187, %r13
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_WT+0xd1d1, %rdx
nop
add %r8, %r8
mov (%rdx), %r13d
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_D+0xa016, %r10
xor $49410, %rdx
movw $0x5152, (%r10)
xor $4994, %r10

// Faulty Load
lea addresses_UC+0x6119, %r9
nop
nop
nop
nop
nop
and $49883, %rax
mov (%r9), %r10w
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'37': 229}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
