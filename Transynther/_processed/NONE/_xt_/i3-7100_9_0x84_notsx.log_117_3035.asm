.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b97e, %rsi
lea addresses_WT_ht+0x1bb62, %rdi
nop
nop
nop
dec %r10
mov $64, %rcx
rep movsl
nop
nop
nop
nop
add $42904, %rbx
lea addresses_WC_ht+0xf9e2, %rsi
nop
add %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xcde2, %rsi
lea addresses_normal_ht+0x1aa02, %rdi
nop
sub $1822, %r9
mov $98, %rcx
rep movsw
add $55330, %rbx
lea addresses_WT_ht+0xb952, %rbx
clflush (%rbx)
nop
nop
xor $21981, %rdi
mov (%rbx), %cx
and $11961, %rdi
lea addresses_D_ht+0x15da2, %rdi
nop
add %rcx, %rcx
mov (%rdi), %si
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0xe3e, %rdi
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
cmp $31248, %r10
lea addresses_WT_ht+0xa262, %rdi
nop
nop
add $52893, %rbx
movb $0x61, (%rdi)
and $9550, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0x3cb63900000008e2, %r9
nop
add $22666, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
xor $22588, %rbx

// Faulty Load
lea addresses_PSE+0x19de2, %r14
nop
nop
nop
nop
nop
and $48094, %r11
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'33': 117}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
