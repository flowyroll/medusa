.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x6df, %rcx
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_US+0x19e9f, %r14
nop
nop
nop
nop
add $5515, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
cmp $9575, %r14

// Store
lea addresses_D+0xd607, %rbx
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_A+0x1c2df, %rbx
nop
nop
nop
and $48880, %r13
movb $0x51, (%rbx)
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x2781, %rdi
nop
nop
nop
nop
cmp $41480, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdi)
nop
and $36378, %rcx

// Store
lea addresses_A+0x1c2df, %r15
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_PSE+0xa389, %r15
nop
xor $20704, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
sub $61654, %r14

// Store
lea addresses_WT+0x1ebd3, %rbp
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovaps %ymm0, (%rbp)
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_A+0x1c2df, %rdi
add %rcx, %rcx
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 31}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
