.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
lea addresses_A_ht+0xdceb, %r9
nop
cmp %rbp, %rbp
mov (%r9), %r13w
nop
nop
nop
nop
nop
xor %r13, %r13
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x3813, %rbp
nop
nop
nop
nop
nop
sub $16162, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rbp)
nop
cmp $52048, %r15

// Store
lea addresses_normal+0x1a5e0, %rdx
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
sub $57646, %rsi

// Store
lea addresses_WT+0x12c13, %rsi
nop
nop
nop
xor $63803, %rdi
movw $0x5152, (%rsi)
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_WT+0x12c13, %r15
clflush (%r15)
nop
add $38180, %rdi
mov (%r15), %r13d
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'52': 59}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
