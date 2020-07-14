.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0xb067, %r9
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
xor %r14, %r14

// Store
lea addresses_RW+0x1cc67, %r15
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
nop
nop
nop
cmp $65403, %rbx

// Store
lea addresses_RW+0xe067, %r9
nop
xor %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
nop
add %r9, %r9

// Store
lea addresses_A+0xa33f, %rdx
nop
nop
nop
nop
cmp %rax, %rax
movw $0x5152, (%rdx)
nop
nop
nop
add %r15, %r15

// Store
lea addresses_A+0x1c0d7, %rdx
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rdx)
sub %r14, %r14

// Store
lea addresses_RW+0x13727, %rax
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movntdq %xmm2, (%rax)
and %r9, %r9

// Store
lea addresses_WC+0xf867, %r14
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r14)
nop
dec %rax

// Store
lea addresses_D+0x1cb67, %rdx
sub $64959, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rdx)
and %rax, %rax

// Store
lea addresses_D+0x1a514, %rax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
and $10505, %rdx

// Store
lea addresses_WC+0x1563, %rbx
nop
nop
nop
nop
add $21536, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
and %rdx, %rdx

// Load
lea addresses_RW+0x9067, %rbx
nop
and %rax, %rax
mov (%rbx), %ebp
dec %rbx

// Faulty Load
lea addresses_A+0xb067, %r9
add %rbx, %rbx
movntdqa (%r9), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
