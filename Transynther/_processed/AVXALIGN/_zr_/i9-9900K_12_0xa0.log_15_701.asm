.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x147d8, %rbx
nop
nop
sub %rsi, %rsi
mov (%rbx), %r15d
sub %rsi, %rsi
lea addresses_D_ht+0xceb4, %rsi
lea addresses_D_ht+0x6060, %rdi
sub $3751, %r10
mov $31, %rcx
rep movsw
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x13f3f, %rsi
nop
nop
nop
add $63264, %r15
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
and $50459, %rdi
lea addresses_WC_ht+0x12cd4, %rdi
and %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
inc %r8
lea addresses_WC_ht+0xe6b4, %rbx
nop
nop
nop
nop
nop
and %r15, %r15
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
nop
sub $5094, %r10
lea addresses_WC_ht+0x7df4, %r10
add $39643, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x6b4, %rsi
lea addresses_WC_ht+0xa628, %rdi
nop
sub $12069, %r8
mov $17, %rcx
rep movsb
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x19eb4, %r9
nop
nop
add %r13, %r13
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x21c6, %rdx
nop
nop
nop
nop
nop
cmp $32840, %rsi
movl $0x51525354, (%rdx)
inc %rdx

// Store
mov $0x81c, %rdx
nop
nop
nop
nop
cmp $64656, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
add $42635, %rbp

// Faulty Load
lea addresses_A+0x19eb4, %r13
sub $14556, %r12
mov (%r13), %r9w
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
