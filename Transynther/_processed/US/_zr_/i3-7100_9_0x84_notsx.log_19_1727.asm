.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b8f5, %rdx
nop
nop
nop
nop
nop
cmp $4231, %r15
mov (%rdx), %rax
nop
add $22492, %r12
lea addresses_A_ht+0x9d47, %rsi
lea addresses_A_ht+0x33f7, %rdi
dec %rbp
mov $0, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_D_ht+0x50cb, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %bp
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x6397, %rdi
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdi)
nop
cmp %rdx, %rdx

// Store
mov $0x7398200000000a43, %rdi
nop
nop
and $23364, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
cmp $8381, %rsi

// Load
mov $0x727, %r8
nop
nop
nop
sub $17837, %r9
mov (%r8), %si
add $34144, %r13

// Store
lea addresses_normal+0x17dff, %rdi
xor %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
cmp %rdi, %rdi

// Faulty Load
lea addresses_US+0x1c547, %r9
nop
and $33988, %rdx
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
