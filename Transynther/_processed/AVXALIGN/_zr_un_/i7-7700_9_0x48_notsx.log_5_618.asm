.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0xf04, %rax
nop
add $10858, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovaps %ymm4, (%rax)
nop
nop
nop
inc %rax

// Store
lea addresses_RW+0x6fc4, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rcx)
nop
nop
nop
cmp $30046, %rdx

// Store
lea addresses_A+0x1904, %rdx
nop
nop
nop
nop
sub %rax, %rax
movw $0x5152, (%rdx)
nop
add $55711, %rax

// Faulty Load
lea addresses_US+0x6704, %rdx
nop
xor %r10, %r10
vmovntdqa (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'08': 1, '00': 4}
00 00 00 08 00
*/
