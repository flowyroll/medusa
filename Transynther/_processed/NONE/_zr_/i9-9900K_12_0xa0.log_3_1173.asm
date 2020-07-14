.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rcx
lea addresses_normal_ht+0xf253, %r10
sub $25028, %rcx
mov (%r10), %r14w
nop
nop
nop
nop
xor $24919, %rbp
lea addresses_UC_ht+0x3c5b, %rbx
nop
nop
nop
xor $2792, %r11
movb $0x61, (%rbx)
nop
sub %r10, %r10
lea addresses_normal_ht+0x148ab, %rbp
nop
nop
nop
and $20701, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
and %r10, %r10
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_WC+0x299b, %r13
nop
nop
nop
nop
nop
add $55392, %rsi
movw $0x5152, (%r13)
inc %r10

// Faulty Load
lea addresses_WC+0x299b, %r15
clflush (%r15)
nop
nop
add %rdx, %rdx
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': True, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'00': 3}
00 00 00
*/
