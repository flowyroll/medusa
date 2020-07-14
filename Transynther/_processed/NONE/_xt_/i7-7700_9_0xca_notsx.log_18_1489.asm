.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rcx
lea addresses_normal_ht+0x13be6, %rcx
nop
nop
nop
nop
dec %r11
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
inc %rbx
pop %rcx
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rdi

// Store
mov $0x14849f0000000be6, %r11
nop
nop
cmp $45522, %r8
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
dec %r15

// Faulty Load
lea addresses_RW+0x1bfe6, %rdi
nop
nop
nop
nop
nop
dec %r12
mov (%rdi), %ebx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'32': 18}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
