.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x375, %rsi
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%rsi)
nop
nop
nop
nop
add %rdi, %rdi

// Load
lea addresses_D+0xee95, %r14
inc %rdx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0x7355, %r11
nop
nop
nop
nop
nop
sub $50876, %rdx
movl $0x51525354, (%r11)
nop
nop
inc %rcx

// Load
lea addresses_UC+0x9ea5, %r11
nop
nop
nop
nop
nop
add %rdx, %rdx
movaps (%r11), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0x3c95, %r9
nop
nop
nop
nop
nop
xor $56855, %rdx
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
