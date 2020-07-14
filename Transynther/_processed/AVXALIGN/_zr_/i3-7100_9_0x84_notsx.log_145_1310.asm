.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rbx
lea addresses_WT_ht+0x1ceac, %r15
nop
nop
nop
inc %r10
mov (%r15), %ebp
nop
nop
nop
cmp $42639, %rbx
lea addresses_UC_ht+0x19eac, %rax
nop
nop
nop
nop
nop
add $20489, %r12
mov (%rax), %r9
nop
nop
nop
sub $44635, %r9
pop %rbx
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
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1064, %r13
nop
cmp %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
sub $64396, %rax

// Load
lea addresses_normal+0x1ceac, %rax
nop
sub $15255, %r9
movb (%rax), %r13b
nop
add $62612, %rax

// Store
lea addresses_WT+0x4eac, %r10
nop
nop
nop
inc %rax
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
add %rsi, %rsi

// REPMOV
mov $0x6ac, %rsi
mov $0x3e8, %rdi
nop
nop
nop
add %r10, %r10
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_normal+0x1ceac, %r13
nop
nop
nop
nop
xor %rsi, %rsi
vmovaps (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 145}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
