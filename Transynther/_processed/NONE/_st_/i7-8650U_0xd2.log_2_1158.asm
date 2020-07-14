.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14fe1, %r9
nop
nop
nop
nop
and %r15, %r15
movb (%r9), %r10b
nop
nop
sub $12798, %rbp
lea addresses_D_ht+0x170e1, %r12
and $28925, %rcx
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0xa1e1, %rsi
lea addresses_A_ht+0x1c1e1, %rdi
clflush (%rsi)
xor %rbp, %rbp
mov $9, %rcx
rep movsw
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_PSE+0x125e1, %r14
clflush (%r14)
nop
sub $60751, %r10
movl $0x51525354, (%r14)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0xc0e1, %r8
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
dec %r8

// Load
lea addresses_D+0x13de1, %r8
sub $28862, %r14
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
xor $34767, %rcx

// Faulty Load
lea addresses_A+0x65e1, %r10
sub %r9, %r9
movb (%r10), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'54': 2}
54 54
*/
