.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdx
lea addresses_A_ht+0xa1f4, %rdx
clflush (%rdx)
nop
xor $53669, %r9
movb (%rdx), %r14b
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xffe4, %r8
nop
nop
nop
nop
inc %r14
movw $0x6162, (%r8)
nop
xor $36485, %r14
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x6844, %rdi
nop
cmp $13971, %rbp
movw $0x5152, (%rdi)
nop
and $1097, %rdx

// Load
lea addresses_WC+0xe104, %r12
nop
nop
sub $44339, %r13
mov (%r12), %bp
xor %rbp, %rbp

// Load
lea addresses_A+0x1e844, %rdx
nop
nop
nop
nop
nop
add $22786, %rdi
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
and %rdx, %rdx

// Store
lea addresses_normal+0x102d4, %rdx
nop
nop
xor %rsi, %rsi
movb $0x51, (%rdx)
inc %r10

// Faulty Load
lea addresses_WT+0x16044, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub $35317, %rdx
mov (%rbp), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
