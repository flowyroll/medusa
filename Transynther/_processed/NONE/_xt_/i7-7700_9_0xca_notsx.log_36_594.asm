.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rdi
push %rdx
lea addresses_UC_ht+0x1bdba, %r10
nop
nop
nop
add $3429, %r15
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
xor %rdi, %rdi
pop %rdx
pop %rdi
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi

// Store
mov $0x1ba, %r13
nop
nop
nop
xor $13193, %r12
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0xc1ba, %rcx
nop
and %r10, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_D+0x12974, %r13
nop
add %rsi, %rsi
movw $0x5152, (%r13)
nop
add $35727, %rsi

// Store
lea addresses_WC+0xd7ba, %r10
cmp $12156, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r10)
sub %r11, %r11

// Faulty Load
lea addresses_RW+0x105ba, %r13
nop
nop
nop
nop
nop
and $24995, %r11
movups (%r13), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'32': 36}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
