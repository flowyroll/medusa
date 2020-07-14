.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x19cf7, %rsi
nop
nop
nop
add $34180, %r13
movb $0x51, (%rsi)
add $24221, %rbp

// Store
mov $0x857, %r13
nop
nop
cmp $47045, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x1a14f, %rsi
nop
nop
nop
nop
and $63179, %rbx
movb $0x51, (%rsi)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x17b67, %rbp
nop
nop
nop
nop
sub $27498, %r15
movl $0x51525354, (%rbp)
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_UC+0x12c37, %rcx
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
add $2293, %rsi

// Store
mov $0xf7, %r15
nop
nop
nop
xor %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_A+0x19cf7, %rsi
nop
nop
nop
sub %rdx, %rdx
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'35': 17}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
